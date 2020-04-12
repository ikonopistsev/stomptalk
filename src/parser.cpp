#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#include "stomptalk/parser.h"
#include "stomptalk/config.h"
#include "memeq.hpp"

#if '\n' != '\x0a' || 'A' != 65
#error "You have somehow found a non-ASCII host. We can't build here."
#endif

#define PARSER_STACK_MAX 2048
#define LF               '\n'
#define CR               '\r'

#if defined __GNUC__ || defined __llvm__
#       define stlp_likely(x)         __builtin_expect(!!(x), 1)
#       define stlp_unlikely(x)       __builtin_expect(!!(x), 0)
#else
#       define stlp_likely(x)         (x)
#       define stlp_unlikely(x)       (x)
#endif

template<class T>
T get_min(T a, T b) noexcept
{
    return a < b ? a : b;
}

enum eval_hdr_val {
    eval_hdr_val_none = 0,
    eval_hdr_val_content_length
};

enum parser_state {
    s_start = 0,
    s_method,
    s_almost_done,
    s_done,
    s_hdrline_start,
    s_hdrline_hdr_almost_done,
    s_hdrline_hdr_done,
    s_hdrline_hdr_key,
    s_hdrline_hdr_space_before_val,
    s_hdrline_hdr_val,
    s_hdrline_almost_done,
    s_body_read,
    s_body_read_no_content_length,
    s_body_check_0
};

typedef enum eval_hdr_val eval_hdr_val;
typedef enum parser_state parser_state;


struct stlparser {
    stlparse_error error;
    parser_state    state;
    eval_hdr_val    heval;
    stlp_method     method;

    uint64_t      content_len;      /* this gets decremented as data passes through */
    uint64_t      orig_content_len; /* this contains the original length of the body */
    uint64_t      bytes_read;
    uint64_t      total_bytes_read;

    void * userdata;

    size_t buf_idx;
    /* Must be last since stlparser_init memsets up to the offset of this buffer */
    char buf[PARSER_STACK_MAX];
};

static const char * errstr_map[] = {
    "parse_error_none",
    "parse_error_too_big",
    "parse_error_invalid_method",
    "parse_error_invalid_requestline",
    "parse_error_invalid_version",
    "parse_error_invalid_header",
    "parse_error_invalid_state",
    "parse_error_user",
    "parse_error_status",
    "parse_error_unknown"
};

static const char * method_strmap[] = {
    "CONNECT",
    "SUBSCRIBE",
    "MESSAGE",
    "CONNECTED",
    "SEND",
    "UNSUBSCRIBE",
    "ACK",
    "NACK",
    "BEGIN",
    "COMMIT",
    "ABORT",
    "DISCONNECT",
    "RECEIPT",
    "ERROR",
    "unknown"
};

static inline int call_hook(stlparser * p, stlparse_hook fn) noexcept
{
    return fn ? fn(p) : 0;
}

static inline int call_hook(stlparser * p, stlparse_data_hook fn,
                            const char* s, size_t l) noexcept
{
    return fn ? fn(p, s, l) : 0;
}

static inline uint64_t
str_to_uint64(char * str, size_t n, int * err)
{
    uint64_t value;

    /* Trim whitespace after value. */
    while (n && isblank(str[n - 1]))
    {
        n--;
    }

    if (n > 20)
    {
        /* 18446744073709551615 is 20 bytes */
        *err = 1;
        return 0;
    }

    for (value = 0; n--; str++)
    {
        uint64_t check;

        if (*str < '0' || *str > '9')
        {
            *err = 1;
            return 0;
        }

        check = value * 10 + static_cast<uint64_t>(*str - '0');

        if ((value && check <= value))
        {
            *err = 1;
            return 0;
        }

        value = check;
    }

    return value;
}

stlparse_error
stlparser_get_error(stlparser * p)
{
    return p->error;
}

const char *
stlparser_get_strerror(stlparser * p)
{
    stlparse_error e = stlparser_get_error(p);

    if (e > stlparse_error_generic)
    {
        return "stlparse_no_such_error";
    }

    return errstr_map[e];
}

stlp_method
stlparser_get_method(stlparser * p)
{
    return p->method;
}

const char *
stlparser_get_methodstr_m(stlp_method meth)
{
    if (meth > stomp_method_UNKNOWN)
        meth = stomp_method_UNKNOWN;

    return method_strmap[meth];
}

const char *
stlparser_get_methodstr(stlparser * p)
{
    return stlparser_get_methodstr_m(p->method);
}

void *
stlparser_get_userdata(stlparser * p)
{
    return p->userdata;
}

void
stlparser_set_userdata(stlparser * p, void * ud)
{
    p->userdata = ud;
}

uint64_t
stlparser_get_content_pending(stlparser * p)
{
    return p->content_len;
}

uint64_t
stlparser_get_content_length(stlparser * p)
{
    return p->orig_content_len;
}

uint64_t
stlparser_get_bytes_read(stlparser * p)
{
    return p->bytes_read;
}

uint64_t
stlparser_get_total_bytes_read(stlparser * p)
{
    return p->total_bytes_read;
}

void
stlparser_init(stlparser * p)
{
    /* Do not memset entire string buffer. */
    memset(p, 0, offsetof(stlparser, buf));
    p->buf[0] = '\0';
    p->state  = s_start;
    p->error  = stlparse_error_none;
    p->method = stomp_method_UNKNOWN;
}

stlparser *
stlparser_new(void)
{
    return static_cast<stlparser *>(malloc(sizeof(stlparser)));
}

void
stlparser_free(stlparser *p)
{
    free(p);
}

static stlp_method
get_method(const char * m, const size_t sz)
{
    switch (sz)
    {
    case 3:
        if (eqstr("ACK", m))
            return stomp_method_ACK;
        break;

    case 4:
        if (eqstr("NACK", m))
            return stomp_method_NACK;
        if (eqstr("SEND", m))
            return stomp_method_SEND;
        break;

    case 5:
        if (eqstr("ABORT", m))
            return stomp_method_ABORT;
        if (eqstr("BEGIN", m))
            return stomp_method_BEGIN;
        if (eqstr("ERROR", m))
            return stomp_method_ERROR;
        break;

    case 6:
        if (eqstr("COMMIT", m))
            return stomp_method_COMMIT;
        break;

    case 7:
        if (eqstr("CONNECT", m))
            return stomp_method_CONNECT;
        if (eqstr("MESSAGE", m))
            return stomp_method_MESSAGE;
        if (eqstr("RECEIPT", m))
            return stomp_method_RECEIPT;
        break;

    case 9:
        if (eqstr("CONNECTED", m))
            return stomp_method_CONNECTED;
        if (eqstr("SUBSCRIBE", m))
            return stomp_method_SUBSCRIBE;
        break;

    case 10:
        if (eqstr("DISCONNECT", m))
            return stomp_method_DISCONNECT;
        break;

    case 11:
        if (eqstr("UNSUBSCRIBE", m))
            return stomp_method_UNSUBSCRIBE;
    }

    return stomp_method_UNKNOWN;
}

#define STLP_SET_BUF(CH) do {                                     \
        if (stlp_likely((p->buf_idx + 1) < PARSER_STACK_MAX)) { \
            p->buf[p->buf_idx++] = CH;                           \
            p->buf[p->buf_idx]   = '\0';                         \
        } else {                                                 \
            p->error = stlparse_error_too_big;                    \
            return i + 1;                                        \
        }                                                        \
} while (0)


size_t
stlparser_run(stlparser * p, stlparse_hooks * hooks,
              const char * data, size_t len)
{
    char ch;
    size_t i;
    size_t body_index;

    p->error      = stlparse_error_none;
    p->bytes_read = 0;

    for (i = 0; i < len; i++)
    {
        int res;
        int err;

        ch = data[i];

        p->total_bytes_read += 1;
        p->bytes_read       += 1;

        switch (p->state)
        {

        case s_start:
        {
            if (ch == CR || ch == LF || ch == '\0')
                break;

            if ((ch < 'A' || ch > 'Z') && ch != '_')
            {
                p->error = stlparse_error_inval_reqline;
                return i + 1;
            }

            p->error            = stlparse_error_none;
            p->method           = stomp_method_UNKNOWN;
            p->content_len      = 0;
            p->orig_content_len = 0;

            res = (hooks) ?
                call_hook(p, hooks->on_msg_begin) : 0;

            STLP_SET_BUF(ch);

            if (res)
            {
                p->error = stlparse_error_user;
                return i + 1;
            }

            p->state = s_method;

            break;
        }

        case s_method:
        {
            do {
                if ((ch == '\r') || (ch == '\n'))
                {
                    p->method  = get_method(p->buf, p->buf_idx);

                    res = (hooks) ?
                        call_hook(p, hooks->method, p->buf, p->buf_idx) : 0;

                    p->buf_idx = 0;
                    p->state   = s_almost_done;

                    if (res)
                    {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }

                    break;
                }
                else
                {
                    if ((ch < 'A' || ch > 'Z') && ch != '_')
                    {
                        p->error = stlparse_error_inval_method;
                        return i + 1;
                    }

                    STLP_SET_BUF(ch);
                }

                ch = data[++i];
            } while (i < len);

            break;
        }

        case s_almost_done:
            switch (ch)
            {
            case LF:
                p->state = s_done;

                res = (hooks) ?
                    call_hook(p, hooks->on_hdrs_begin) : 0;
                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }
                break;

            default:
                p->error = stlparse_error_inval_reqline;
                return i + 1;
            }
            break;

        case s_done:
            switch (ch) {
                case CR:
                    p->state = s_hdrline_almost_done;
                    break;
                case LF:
                    return i + 1;
                default:
                    goto hdrline_start;
            }
            break;

hdrline_start:
        case s_hdrline_start:
            p->buf_idx = 0;
            switch (ch) {
                case CR:
                    p->state = s_hdrline_hdr_almost_done;
                    break;
                case LF:
                    p->state = s_hdrline_hdr_done;
                    break;
                default:
                    STLP_SET_BUF(ch);
                    p->state = s_hdrline_hdr_key;
            }
            break;

        case s_hdrline_hdr_key:
        {
            do {
                if (stlp_unlikely(ch == ':'))
                {
                    res = (hooks) ?
                        call_hook(p, hooks->hdr_key, p->buf, p->buf_idx) : 0;

                    /* figure out if the value of this header is valueable */
                    p->heval = eval_hdr_val_none;

                    switch (p->buf_idx + 1)
                    {
                    case 15:
                        if (eqstr("content-length", p->buf))
                            p->heval = eval_hdr_val_content_length;
                        break;
                    }

                    p->buf_idx = 0;
                    p->state   = s_hdrline_hdr_space_before_val;

                    if (res)
                    {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }

                    break;
                }

                switch (ch)
                {
                case CR:
                    p->state = s_hdrline_hdr_almost_done;
                    break;
                case LF:
                    p->state = s_hdrline_hdr_done;
                    break;
                default:
                    STLP_SET_BUF(ch);
                }

                if (p->state != s_hdrline_hdr_key)
                    break;

                ch = data[++i];
            } while (i < len);

            break;
        }

        case s_hdrline_hdr_space_before_val:
        {
            switch (ch)
            {
            case ' ':
                break;

            case CR:
                /*
                 * we have an empty header value here, so we set the buf
                 * to empty, set the state to hdrline_hdr_val, and
                 * decrement the start byte counter.
                 */
                STLP_SET_BUF(' ');
                p->state = s_hdrline_hdr_val;

                /*
                 * make sure the next pass comes back to this CR byte,
                 * so it matches in s_hdrline_hdr_val.
                 */
                i--;
                break;

            case LF:
                /* never got a CR for an empty header, this is an
                 * invalid state.
                 */
                p->error = stlparse_error_inval_hdr;
                return i + 1;

            default:
                STLP_SET_BUF(ch);
                p->state = s_hdrline_hdr_val;
            }

            break;
        }

        case s_hdrline_hdr_val:
        {
            err = 0;

            do
            {
                if (stlp_likely(ch == CR))
                {
                    switch (p->heval)
                    {
                    case eval_hdr_val_content_length:
                        p->content_len      = str_to_uint64(p->buf, p->buf_idx, &err);
                        p->orig_content_len = p->content_len;

                        if (err == 1)
                        {
                            p->error = stlparse_error_too_big;
                            return i + 1;
                        }

                        break;
                    default:;
                    }

                    p->state = s_hdrline_hdr_almost_done;
                    break;
                }

                switch (ch)
                {
                case LF:
                    /* LF before CR? invalid */
                    p->error = stlparse_error_inval_hdr;
                    return i + 1;

                default:
                    STLP_SET_BUF(ch);

                }

                if (p->state != s_hdrline_hdr_val)
                    break;

                ch = data[++i];
            } while (i < len);

            break;
        }

        case s_hdrline_hdr_almost_done:
        {
            res = 0;
            switch (ch)
            {
            case LF:
                p->state = s_hdrline_hdr_done;
                break;

            default:
                p->error = stlparse_error_inval_hdr;
                return i + 1;
            }

            if (res)
            {
                p->error = stlparse_error_user;
                return i + 1;
            }

            break;
        }

        case s_hdrline_hdr_done:
        {
            switch (ch)
            {
            case CR:
                res = (hooks) ?
                    call_hook(p, hooks->hdr_val, p->buf, p->buf_idx) : 0;

                p->state = s_hdrline_almost_done;

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case LF:
                /* got LFLF? is this valid? */
                p->error   = stlparse_error_inval_hdr;
                return i + 1;

            case '\t':
                /* this is a multiline header value, we must go back to
                 * reading as a header value */
                p->state   = s_hdrline_hdr_val;
                break;

            default:
                res = (hooks) ?
                    call_hook(p, hooks->hdr_val, p->buf, p->buf_idx) : 0;

                p->buf_idx = 0;

                STLP_SET_BUF(ch);

                p->state   = s_hdrline_hdr_key;

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }
            }
            break;
        }

        case s_hdrline_almost_done:
        {
            if (ch == LF)
            {
                res = (hooks) ?
                    call_hook(p, hooks->on_hdrs_complete) : 0;

                if (res != 0)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                p->buf_idx = 0;

                p->state = (p->content_len > 0) ?
                    s_body_read : s_body_read_no_content_length;
            }
            else
            {
                p->error = stlparse_error_inval_hdr;
                return i + 1;
            }

            break;
        }

        case s_body_read:
        {
            res = 0;
            const char* pp = &data[i];
            const char* pe = data + len;
            size_t to_read = get_min(uint64_t(pe - pp), p->content_len);

            if (to_read > 0)
            {
                res = (hooks) ?
                    call_hook(p, hooks->body, pp, to_read) : 0;

                i  += to_read - 1;
                p->content_len -= to_read;
            }

            if (res)
            {
                p->error = stlparse_error_user;
                return i + 1;
            }

            if (p->content_len == 0)
                p->state = s_body_check_0;

            break;
        }

        case s_body_read_no_content_length:
        {
            // сохраняем позицию начала боди
            // это будет следующий символ, после LF
            body_index = i;

            // если не указана длинна контента
            // мыдолжны искать первый символ '\0'
            do
            {
                if (stlp_likely(ch == '\0'))
                {
                    size_t to_read = i - body_index;
                    if (to_read > 0)
                    {
                        res = (hooks) ?
                            call_hook(p, hooks->body, &data[body_index], to_read) : 0;

                        if (res)
                        {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }
                    }

                    res = (hooks) ?
                        call_hook(p, hooks->on_msg_complete) : 0;

                    p->state = s_start;

                    if (res)
                    {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }

                    // если достигли конца сбрасываем индекс начала боди
                    body_index = i;

                    break;
                }

                ch = data[++i];
            } while (i < len);

            // проверяем до конца ли принято боди
            // если буффер закончился а конец боди так и не наступил
            // вызываем каллбек на прием боди
            size_t to_read = i - body_index;
            if (to_read > 0)
            {
                res = (hooks) ?
                    call_hook(p, hooks->body, &data[body_index], to_read) : 0;

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }
            }

            break;
        }

        case s_body_check_0:
        {
            // проверка на наличие \0 в конце пакета
            if (stlp_unlikely(ch != '\0'))
            {
                p->error = stlparse_error_inval_reqline;
                p->state = s_start;
                return i + 1;
            }
            else
            {
                res = (hooks) ?
                    call_hook(p, hooks->on_msg_complete) : 0;

                p->state = s_start;

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }
            }

            break;
        }
        } /* switch */

        /* If we successfully completed a request/response we return
         * to caller, and leave it up to him to call us again if
         * parsing should continue. */
        if (p->state == s_start)
            return i + 1;

    } /* for */

    return i;
}
