#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <stdio.h>

#include "internal.h"
#include "stomptalk/parser.h"
#include "stomptalk/config.h"

#if '\n' != '\x0a' || 'A' != 65
#error "You have somehow found a non-ASCII host. We can't build here."
#endif

#define PARSER_STACK_MAX 8192
#define LF               (unsigned char)10
#define CR               (unsigned char)13
#define CRLF             "\x0d\x0a"

enum eval_hdr_val {
    eval_hdr_val_none = 0,
    eval_hdr_val_connection,
    eval_hdr_val_proxy_connection,
    eval_hdr_val_content_length,
    eval_hdr_val_transfer_encoding,
    eval_hdr_val_hostname,
    eval_hdr_val_content_type
};

enum parser_flags {
    parser_flag_chunked               = (1 << 0),
    parser_flag_connection_keep_alive = (1 << 1),
    parser_flag_connection_close      = (1 << 2),
    parser_flag_trailing              = (1 << 3),
};

enum parser_state {
    s_start = 0,
    s_method,
    s_stomp_method,
    s_spaces_before_uri,
    s_schema,
    s_schema_slash,
    s_schema_slash_slash,
    s_host,
    s_host_ipv6,
    s_host_done,
    s_port,
    s_after_slash_in_uri,
    s_check_uri,
    s_uri,
    s_http_09,
    s_http_H,
    s_http_HT,
    s_http_HTT,
    s_http_HTTP,
    s_first_major_digit,
    s_major_digit,
    s_first_minor_digit,
    s_minor_digit,
    s_spaces_after_digit,
    s_almost_done,
    s_done,
    s_hdrline_start,
    s_hdrline_hdr_almost_done,
    s_hdrline_hdr_done,
    s_hdrline_hdr_key,
    s_hdrline_hdr_space_before_val,
    s_hdrline_hdr_val,
    s_hdrline_almost_done,
    s_hdrline_done,
    s_body_read,
    s_body_read_no_content_length,
    s_body_check_0,
    s_chunk_size_start,
    s_chunk_size,
    s_chunk_size_almost_done,
    s_chunk_data,
    s_chunk_data_almost_done,
    s_chunk_data_done,
    s_status,
    s_space_after_status,
    s_status_text
};

typedef enum eval_hdr_val eval_hdr_val;
typedef enum parser_flags parser_flags;
typedef enum parser_state parser_state;


struct stlparser {
    stlparse_error error;
    parser_state    state;
    parser_flags    flags;
    eval_hdr_val    heval;

    stlp_type       type;
    stlp_scheme      scheme;
    stlp_method     method;

    unsigned char multipart;
    unsigned char major;
    unsigned char minor;
    uint64_t      content_len;      /* this gets decremented as data passes through */
    uint64_t      orig_content_len; /* this contains the original length of the body */
    uint64_t      bytes_read;
    uint64_t      total_bytes_read;
    unsigned int  status;           /* only for responses */
    unsigned int  status_count;     /* only for responses */

    char * scheme_offset;
    char * host_offset;
    char * port_offset;
    char * path_offset;
    char * args_offset;

    void * userdata;

    size_t buf_idx;
    /* Must be last since stlparser_init memsets up to the offset of this buffer */
    char buf[PARSER_STACK_MAX];
};

#ifdef STOMPTALK_DEBUG
static void
log_stlparser__s_(struct stlparser * p)
{
    log_debug(
        "struct stlparser {\n"
        "    stlparse_error = %d\n"
        "    parser_state   = %d\n"
        "    parser_flags   = %d\n"
        "    eval_hdr_val   = %d\n"
        "    stlp_type       = %d\n"
        "    stlp_scheme     = %d\n"
        "    stlp_method     = %d\n"
        "    multipart      = %c\n"
        "    major          = %c\n"
        "    minor          = %c\n"
        "    content_len    = %zu\n"
        "    orig_clen      = %zu\n"
        "    bytes_read     = %zu\n"
        "    total_read     = %zu\n"
        "    status         = %d\n"
        "    status_count   = %d\n"
        "    scheme_offset  = %s\n"
        "    host_offset    = %s\n"
        "    port_offset    = %s\n"
        "    path_offset    = %s\n"
        "    args_offset    = %s\n"
        "    userdata       = %p\n"
        "    buf_idx        = %zu\n"
        "    buf            = %s\n"
        "};",
        p->error,
        p->state,
        p->flags,
        p->heval,
        p->type,
        p->scheme,
        p->method,
        p->multipart,
        p->major,
        p->minor,
        p->content_len,
        p->orig_content_len,
        p->bytes_read,
        p->total_bytes_read,
        p->status,
        p->status_count,
        p->scheme_offset,
        p->host_offset,
        p->port_offset,
        p->path_offset,
        p->args_offset,
        p->userdata,
        p->buf_idx,
        p->buf);
} /* log_stlparser__s_ */

#else
#define log_stlparser__s_(p)
#endif

static uint32_t usual[] = {
    0xffffdbfe,
    0x7fff37d6,
    0xffffffff,
    0xffffffff,
    0xffffffff,
    0xffffffff,
    0xffffffff,
    0xffffffff
};

static int8_t unhex[256] = {
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  -1, -1, -1, -1, -1, -1,
    -1, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
};

static const char * errstr_map[] = {
    "stlparse_error_none",
    "stlparse_error_too_big",
    "stlparse_error_invalid_method",
    "stlparse_error_invalid_requestline",
    "stlparse_error_invalid_schema",
    "stlparse_error_invalid_protocol",
    "stlparse_error_invalid_version",
    "stlparse_error_invalid_header",
    "stlparse_error_invalid_chunk_size",
    "stlparse_error_invalid_chunk",
    "stlparse_error_invalid_state",
    "stlparse_error_user",
    "stlparse_error_status",
    "stlparse_error_unknown"
};

static const char * method_strmap[] = {
    "GET",
    "HEAD",
    "POST",
    "PUT",
    "DELETE",
    "MKCOL",
    "COPY",
    "MOVE",
    "OPTIONS",
    "PROPFIND",
    "PROPATCH",
    "LOCK",
    "UNLOCK",
    "TRACE",
    "CONNECT",
    "PATCH",
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
    "ERROR"
};

#define _MIN_READ(a, b) ((a) < (b) ? (a) : (b))

#ifndef HOST_BIG_ENDIAN
/* Little-endian cmp macros */
#define _str3_cmp(m, c0, c1, c2, c3) \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0)

#define _str3Ocmp(m, c0, c1, c2, c3) \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0)

#define _str4cmp(m, c0, c1, c2, c3) \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0)

#define _str5cmp(m, c0, c1, c2, c3, c4)                          \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0) \
    && m[4] == c4

#define _str6cmp(m, c0, c1, c2, c3, c4, c5)                      \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0) \
    && (((uint32_t *)m)[1] & 0xffff) == ((c5 << 8) | c4)

#define _str7_cmp(m, c0, c1, c2, c3, c4, c5, c6, c7)             \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0) \
    && ((uint32_t *)m)[1] == ((c7 << 24) | (c6 << 16) | (c5 << 8) | c4)

#define _str8cmp(m, c0, c1, c2, c3, c4, c5, c6, c7)              \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0) \
    && ((uint32_t *)m)[1] == ((c7 << 24) | (c6 << 16) | (c5 << 8) | c4)

#define _str9cmp(m, c0, c1, c2, c3, c4, c5, c6, c7, c8)                 \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0)        \
    && ((uint32_t *)m)[1] == ((c7 << 24) | (c6 << 16) | (c5 << 8) | c4) \
    && m[8] == c8

#define _str10cmp(m, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9)                 \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0)        \
    && ((uint32_t *)m)[1] == ((c7 << 24) | (c6 << 16) | (c5 << 8) | c4) \
    && (((uint32_t *)m)[2] & 0xffff) == ((c9 << 8) | c8)

#define _str11cmp(m, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10)                 \
    *(uint32_t *)m == ((c3 << 24) | (c2 << 16) | (c1 << 8) | c0)        \
    && ((uint32_t *)m)[1] == ((c7 << 24) | (c6 << 16) | (c5 << 8) | c4) \
    && (((uint32_t *)m)[2] & 0xffffff) == ((c10 << 16) | (c9 << 8) | c8)

#else
/* Big endian cmp macros */
#define _str3_cmp(m, c0, c1, c2, c3) \
    m[0] == c0 && m[1] == c1 && m[2] == c2

#define _str3Ocmp(m, c0, c1, c2, c3) \
    m[0] == c0 && m[2] == c2 && m[3] == c3

#define _str4cmp(m, c0, c1, c2, c3) \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3

#define _str5cmp(m, c0, c1, c2, c3, c4) \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3 && m[4] == c4

#define _str6cmp(m, c0, c1, c2, c3, c4, c5)              \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3 \
    && m[4] == c4 && m[5] == c5

#define _str7_cmp(m, c0, c1, c2, c3, c4, c5, c6, c7)     \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3 \
    && m[4] == c4 && m[5] == c5 && m[6] == c6

#define _str8cmp(m, c0, c1, c2, c3, c4, c5, c6, c7)      \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3 \
    && m[4] == c4 && m[5] == c5 && m[6] == c6 && m[7] == c7

#define _str9cmp(m, c0, c1, c2, c3, c4, c5, c6, c7, c8)  \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3 \
    && m[4] == c4 && m[5] == c5 && m[6] == c6 && m[7] == c7 && m[8] == c8

#define _str10cmp(m, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9)  \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3 \
    && m[4] == c4 && m[5] == c5 && m[6] == c6 && m[7] == c7 && m[8] == c8 \
    && m[9] == c9

#define _str11cmp(m, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10)  \
    m[0] == c0 && m[1] == c1 && m[2] == c2 && m[3] == c3 \
    && m[4] == c4 && m[5] == c5 && m[6] == c6 && m[7] == c7 && m[8] == c8 \
    && m[9] == c9 && m[10] == c10

#endif

#define __STLPARSE_GENHOOK(__n)                                                    \
    static inline int hook_ ## __n ## _run(stlparser * p, stlparse_hooks * hooks) { \
        log_debug("enter");                                                       \
        if (hooks && (hooks)->__n)                                                \
        {                                                                         \
            return (hooks)->__n(p);                                               \
        }                                                                         \
                                                                                  \
        return 0;                                                                 \
    }

#define __STLPARSE_GENDHOOK(__n)                                        \
    static inline int hook_ ## __n ## _run(stlparser * p,               \
                                           stlparse_hooks * hooks,      \
                                           const char * s, size_t l) { \
        log_debug("enter");                                            \
        if (hooks && (hooks)->__n)                                     \
        {                                                              \
            return (hooks)->__n(p, s, l);                              \
        }                                                              \
                                                                       \
        return 0;                                                      \
    }

__STLPARSE_GENHOOK(on_msg_begin)
__STLPARSE_GENHOOK(on_hdrs_begin)
__STLPARSE_GENHOOK(on_hdrs_complete)
__STLPARSE_GENHOOK(on_new_chunk)
__STLPARSE_GENHOOK(on_chunk_complete)
__STLPARSE_GENHOOK(on_chunks_complete)
__STLPARSE_GENHOOK(on_msg_complete)

__STLPARSE_GENDHOOK(method)
__STLPARSE_GENDHOOK(scheme)
__STLPARSE_GENDHOOK(host)
__STLPARSE_GENDHOOK(port)
__STLPARSE_GENDHOOK(path)
__STLPARSE_GENDHOOK(args)
__STLPARSE_GENDHOOK(uri)
__STLPARSE_GENDHOOK(hdr_key)
__STLPARSE_GENDHOOK(hdr_val)
__STLPARSE_GENDHOOK(body)
__STLPARSE_GENDHOOK(hostname)


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

        check = value * 10 + (*str - '0');

        if ((value && check <= value))
        {
            *err = 1;
            return 0;
        }

        value = check;
    }

    return value;
}

static inline ssize_t
_str_to_ssize_t(char * str, size_t n)
{
    ssize_t value;

    if (n == 0)
    {
        return -1;
    }

    for (value = 0; n--; str++)
    {
        if (*str < '0' || *str > '9')
        {
            return -1;
        }

        value = value * 10 + (*str - '0');

#if 0
        if (value > INTMAX_MAX)
        {
            return -1;
        }
#endif
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

unsigned int
stlparser_get_status(stlparser * p)
{
    return p->status;
}

int
stlparser_should_keep_alive(stlparser * p)
{
    if (p->major > 0 && p->minor > 0)
    {
        if (p->flags & parser_flag_connection_close)
        {
            return 0;
        } else {
            return 1;
        }
    } else {
        if (p->flags & parser_flag_connection_keep_alive)
        {
            return 1;
        } else {
            return 0;
        }
    }

    return 0;
}

stlp_scheme
stlparser_get_scheme(stlparser * p)
{
    return p->scheme;
}

stlp_method
stlparser_get_method(stlparser * p)
{
    return p->method;
}

const char *
stlparser_get_methodstr_m(stlp_method meth)
{
    if (meth >= htp_method_UNKNOWN)
    {
        return NULL;
    }

    return method_strmap[meth];
}

const char *
stlparser_get_methodstr(stlparser * p)
{
    return stlparser_get_methodstr_m(p->method);
}

void
stlparser_set_major(stlparser * p, unsigned char major)
{
    p->major = major;
}

void
stlparser_set_minor(stlparser * p, unsigned char minor)
{
    p->minor = minor;
}

unsigned char
stlparser_get_major(stlparser * p)
{
    return p->major;
}

unsigned char
stlparser_get_minor(stlparser * p)
{
    return p->minor;
}

unsigned char
stlparser_get_multipart(stlparser * p)
{
    return p->multipart;
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
stlparser_init(stlparser * p, stlp_type type)
{
    /* Do not memset entire string buffer. */
    memset(p, 0, offsetof(stlparser, buf));
    p->buf[0] = '\0';
    p->state  = s_start;
    p->error  = stlparse_error_none;
    p->method = htp_method_UNKNOWN;
    p->type   = type;
}

stlparser *
stlparser_new(void)
{
    return malloc(sizeof(stlparser));
}

void
stlparser_free(const stlparser *p)
{
    free(p);
}

static int
is_host_char(unsigned char ch)
{
    char c = (unsigned char)(ch | 0x20);

    if (c >= 'a' && c <= 'z')
    {
        return 1;
    }

    if ((ch >= '0' && ch <= '9') || ch == '.' || ch == '-')
    {
        return 1;
    }

    return 0;
}

static stlp_method
get_method(const char * m, const size_t sz)
{
    switch (sz) {
        case 3:
            if (_str3_cmp(m, 'G', 'E', 'T', '\0'))
            {
                return htp_method_GET;
            }

            if (_str3_cmp(m, 'P', 'U', 'T', '\0'))
            {
                return htp_method_PUT;
            }

            break;
        case 4:
            if (m[1] == 'O')
            {
                if (_str3Ocmp(m, 'P', 'O', 'S', 'T'))
                {
                    return htp_method_POST;
                }

                if (_str3Ocmp(m, 'C', 'O', 'P', 'Y'))
                {
                    return htp_method_COPY;
                }

                if (_str3Ocmp(m, 'M', 'O', 'V', 'E'))
                {
                    return htp_method_MOVE;
                }

                if (_str3Ocmp(m, 'L', 'O', 'C', 'K'))
                {
                    return htp_method_LOCK;
                }
            } else {
                if (_str4cmp(m, 'H', 'E', 'A', 'D'))
                {
                    return htp_method_HEAD;
                }
            }

            break;
        case 5:
            if (_str5cmp(m, 'M', 'K', 'C', 'O', 'L'))
            {
                return htp_method_MKCOL;
            }

            if (_str5cmp(m, 'T', 'R', 'A', 'C', 'E'))
            {
                return htp_method_TRACE;
            }

            if (_str5cmp(m, 'P', 'A', 'T', 'C', 'H'))
            {
                return htp_method_PATCH;
            }

            break;
        case 6:
            if (_str6cmp(m, 'D', 'E', 'L', 'E', 'T', 'E'))
            {
                return htp_method_DELETE;
            }

            if (_str6cmp(m, 'U', 'N', 'L', 'O', 'C', 'K'))
            {
                return htp_method_UNLOCK;
            }

            break;
        case 7:
            if (_str7_cmp(m, 'O', 'P', 'T', 'I', 'O', 'N', 'S', '\0'))
            {
                return htp_method_OPTIONS;
            }

            if (_str7_cmp(m, 'C', 'O', 'N', 'N', 'E', 'C', 'T', '\0'))
            {
                return htp_method_CONNECT;
            }

            break;
        case 8:
            if (_str8cmp(m, 'P', 'R', 'O', 'P', 'F', 'I', 'N', 'D'))
            {
                return htp_method_PROPFIND;
            }

            break;

        case 9:
            if (_str9cmp(m, 'P', 'R', 'O', 'P', 'P', 'A', 'T', 'C', 'H'))
            {
                return htp_method_PROPPATCH;
            }

            break;
    }                 /* switch */

    return htp_method_UNKNOWN;
} /* get_method */

static stlp_method
get_stomp_method(const char * m, const size_t sz)
{
    switch (sz) {
        case 3:
            if (_str3_cmp(m, 'A', 'C', 'K', '\0'))
            {
                return stomp_method_ACK;
            }

            break;
        case 4:
            if (_str3Ocmp(m, 'N', 'A', 'C', 'K'))
            {
                return stomp_method_NACK;
            }

            if (_str3Ocmp(m, 'S', 'E', 'N', 'D'))
            {
                return stomp_method_SEND;
            }

            break;
        case 5:
            if (_str5cmp(m, 'A', 'B', 'O', 'R', 'T'))
            {
                return stomp_method_ABORT;
            }

            if (_str5cmp(m, 'B', 'E', 'G', 'I', 'N'))
            {
                return stomp_method_BEGIN;
            }

            if (_str5cmp(m, 'E', 'R', 'R', 'O', 'R'))
            {
                return stomp_method_ERROR;
            }

            break;
        case 6:
            if (_str6cmp(m, 'C', 'O', 'M', 'M', 'I', 'T'))
            {
                return stomp_method_COMMIT;
            }

            break;
        case 7:
            if (_str7_cmp(m, 'C', 'O', 'N', 'N', 'E', 'C', 'T', '\0'))
            {
                return stomp_method_CONNECT;
            }

            if (_str7_cmp(m, 'M', 'E', 'S', 'S', 'A', 'G', 'E', '\0'))
            {
                return stomp_method_MESSAGE;
            }

            if (_str7_cmp(m, 'R', 'E', 'C', 'E', 'I', 'P', 'T', '\0'))
            {
                return stomp_method_RECEIPT;
            }

            break;

    case 9:
            if (_str9cmp(m, 'C', 'O', 'N', 'N', 'E', 'C', 'T', 'E', 'D'))
            {
                return stomp_method_CONNECTED;
            }

            if (_str9cmp(m, 'S', 'U', 'B', 'S', 'C', 'R', 'I', 'B', 'E'))
            {
                return stomp_method_SUBSCRIBE;
            }

            break;

    case 10:
            if (_str10cmp(m, 'D', 'I', 'S', 'C', 'O', 'N', 'N', 'E', 'C', 'T'))
            {
                return stomp_method_DISCONNECT;
            }

            break;

    case 11:
            if (_str11cmp(m, 'U', 'N', 'S', 'U', 'B', 'S',  'C', 'R', 'I', 'B', 'E'))
            {
                return stomp_method_UNSUBSCRIBE;
            }

            break;
    }                 /* switch */

    return htp_method_UNKNOWN;
} /* get_method */

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
stlparser_run(stlparser * p, stlparse_hooks * hooks, const char * data, size_t len)
{
    unsigned char ch;
    char          c;
    size_t        i;
    size_t        body_index;

    log_debug("enter");
    log_debug("p == %p", p);

    p->error      = stlparse_error_none;
    p->bytes_read = 0;

    for (i = 0; i < len; i++)
    {
        int res;
        int err;

        ch = data[i];

        log_debug("[%p] data[%zu] = %c (%x)", p, i, isprint(ch) ? ch : ' ', ch);

        p->total_bytes_read += 1;
        p->bytes_read       += 1;

        switch (p->state) {
            case s_start:
                log_debug("[%p] s_start", p);

                if (ch == CR || ch == LF)
                {
                    break;
                }

                if ((ch < 'A' || ch > 'Z') && ch != '_')
                {
                    p->error = stlparse_error_inval_reqline;

                    log_debug("s_start invalid fist char '%c'", ch);
                    log_stlparser__s_(p);

                    return i + 1;
                }


                p->flags            = 0;
                p->error            = stlparse_error_none;
                p->method           = htp_method_UNKNOWN;
                p->multipart        = 0;
                p->major            = 0;
                p->minor            = 0;
                p->content_len      = 0;
                p->orig_content_len = 0;
                p->status           = 0;
                p->status_count     = 0;
                p->scheme_offset    = NULL;
                p->host_offset      = NULL;
                p->port_offset      = NULL;
                p->path_offset      = NULL;
                p->args_offset      = NULL;


                res = hook_on_msg_begin_run(p, hooks);

                STLP_SET_BUF(ch);

                if (stlp_likely(p->type == stlp_type_request)) {
                    p->state = s_method;
                } else if (p->type == stlp_type_response && ch == 'H') {
                    p->state = s_http_H;
                } else if (stlp_likely(p->type == stomp_type)) {
                    p->state = s_stomp_method;
                } else {
                    log_debug("not type of request or response?");
                    log_stlparser__s_(p);

                    p->error = stlparse_error_inval_reqline;
                    return i + 1;
                }

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case s_method:
                log_debug("[%p] s_method", p);

                do {
                    if (ch == ' ')
                    {
                        p->method  = get_method(p->buf, p->buf_idx);
                        res        = hook_method_run(p, hooks, p->buf, p->buf_idx);

                        p->buf_idx = 0;
                        p->state   = s_spaces_before_uri;

                        if (res)
                        {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }

                        break;
                    } else {
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

            case s_stomp_method:
                log_debug("[%p] s_stomp_method", p);

            do {
                if ((ch == '\r') || (ch == '\n'))
                {
                    p->method  = get_stomp_method(p->buf, p->buf_idx);
                    res        = hook_method_run(p, hooks, p->buf, p->buf_idx);

                    p->buf_idx = 0;
                    p->state   = s_almost_done;

                    if (res)
                    {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }

                    break;
                } else {
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

            case s_spaces_before_uri:
                log_debug("[%p] s_spaces_before_uri", p);

                /* CONNECT is special - RFC 2817 section 5.2:
                 * The Request-URI portion of the Request-Line is
                 * always an 'authority' as defined by URI Generic
                 * Syntax [2], which is to say the host name and port
                 * number destination of the requested connection
                 * separated by a colon
                 */
                if (p->method == htp_method_CONNECT)
                {
                    switch (ch) {
                        case ' ':
                            break;
                        case '[':
                            /* Literal IPv6 address start. */
                            STLP_SET_BUF(ch);

                            p->host_offset = &p->buf[p->buf_idx];
                            p->state       = s_host_ipv6;
                            break;
                        default:
                            if (!is_host_char(ch))
                            {
                                p->error = stlparse_error_inval_reqline;
                                log_stlparser__s_(p);

                                return i + 1;
                            }

                            p->host_offset = &p->buf[p->buf_idx];

                            STLP_SET_BUF(ch);

                            p->state       = s_host;
                            break;
                    } /* switch */

                    break;
                }

                switch (ch) {
                    case ' ':
                        break;
                    case '/':
                        p->path_offset = &p->buf[p->buf_idx];

                        STLP_SET_BUF(ch);

                        p->state       = s_after_slash_in_uri;
                        break;
                    default:
                        c = (unsigned char)(ch | 0x20);

                        if (c >= 'a' && c <= 'z') {
                            p->scheme_offset = &p->buf[p->buf_idx];

                            STLP_SET_BUF(ch);

                            p->state         = s_schema;
                            break;
                        }

                        p->error = stlparse_error_inval_reqline;
                        log_stlparser__s_(p);

                        return i + 1;
                } /* switch */

                break;
            case s_schema:
                log_debug("[%p] s_schema", p);

                c = (unsigned char)(ch | 0x20);

                if (c >= 'a' && c <= 'z') {
                    STLP_SET_BUF(ch);
                    break;
                }

                switch (ch) {
                    case ':':
                        p->scheme = stlp_scheme_unknown;

                        switch (p->buf_idx) {
                            case 3:
                                if (_str3_cmp(p->scheme_offset, 'f', 't', 'p', '\0'))
                                {
                                    p->scheme = stlp_scheme_ftp;
                                    break;
                                }

                                if (_str3_cmp(p->scheme_offset, 'n', 'f', 's', '\0'))
                                {
                                    p->scheme = stlp_scheme_nfs;
                                    break;
                                }

                                break;
                            case 4:
                                if (_str4cmp(p->scheme_offset, 'h', 't', 't', 'p'))
                                {
                                    p->scheme = stlp_scheme_http;
                                    break;
                                }
                                break;
                            case 5:
                                if (_str5cmp(p->scheme_offset, 'h', 't', 't', 'p', 's'))
                                {
                                    p->scheme = stlp_scheme_https;
                                    break;
                                }
                                break;
                        } /* switch */

                        res = hook_scheme_run(p, hooks,
                                              p->scheme_offset,
                                              (&p->buf[p->buf_idx] - p->scheme_offset));

                        STLP_SET_BUF(ch);

                        p->state = s_schema_slash;

                        if (res) {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }

                        break;
                    default:
                        p->error = stlparse_error_inval_schema;
                        return i + 1;
                } /* switch */

                break;
            case s_schema_slash:
                log_debug("[%p] s_schema_slash", p);

                switch (ch) {
                    case '/':
                        STLP_SET_BUF(ch);

                        p->state = s_schema_slash_slash;
                        break;
                    default:
                        p->error = stlparse_error_inval_schema;
                        return i + 1;
                }
                break;
            case s_schema_slash_slash:
                log_debug("[%p] s_schema_slash_slash", p);

                switch (ch) {
                    case '/':
                        STLP_SET_BUF(ch);
                        p->host_offset = &p->buf[p->buf_idx];

                        p->state       = s_host;
                        break;
                    default:
                        p->error       = stlparse_error_inval_schema;
                        return i + 1;
                }
                break;
            case s_host:
                if (ch == '[') {
                    /* Literal IPv6 address start. */
                    STLP_SET_BUF(ch);
                    p->host_offset = &p->buf[p->buf_idx];

                    p->state       = s_host_ipv6;
                    break;
                }

                if (is_host_char(ch)) {
                    STLP_SET_BUF(ch);
                    break;
                }

                res = hook_host_run(p, hooks,
                                    p->host_offset,
                                    (&p->buf[p->buf_idx] - p->host_offset));

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

            /* successfully parsed a NON-IPV6 hostname, knowing this, the
             * current character in 'ch' is actually the next state, so we
             * we fall through to avoid another loop.
             */
            case s_host_done:
                res = 0;

                switch (ch) {
                    case ':':
                        STLP_SET_BUF(ch);

                        p->port_offset = &p->buf[p->buf_idx];
                        p->state       = s_port;
                        break;
                    case ' ':
                        /* this technically should never happen, but we should
                         * check anyway
                         */
                        if (i == 0)
                        {
                            p->error = stlparse_error_inval_state;
                            return i + 1;
                        }

                        i--;
                        ch = '/';
                    /* to accept requests like <method> <proto>://<host> <ver>
                     * we fallthrough to the next case.
                     */
                    case '/':
                        p->path_offset = &p->buf[p->buf_idx];

                        STLP_SET_BUF(ch);

                        p->state       = s_after_slash_in_uri;
                        break;
                    default:
                        p->error       = stlparse_error_inval_schema;
                        return i + 1;
                } /* switch */

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;
            case s_host_ipv6:
                c = (unsigned char)(ch | 0x20);

                if ((c >= 'a' && c <= 'f')
                    || (ch >= '0' && ch <= '9')
                    || ch == ':'
                    || ch == '.') {
                    STLP_SET_BUF(ch);
                    break;
                }

                switch (ch) {
                    case ']':
                        res = hook_host_run(p, hooks, p->host_offset,
                                            (&p->buf[p->buf_idx] - p->host_offset));
                        if (res) {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }

                        STLP_SET_BUF(ch);

                        p->state = s_host_done;
                        break;
                    default:
                        p->error = stlparse_error_inval_schema;
                        return i + 1;
                } /* switch */
                break;
            case s_port:
                if (ch >= '0' && ch <= '9') {
                    STLP_SET_BUF(ch);
                    break;
                }

                res = hook_port_run(p, hooks, p->port_offset,
                                    (&p->buf[p->buf_idx] - p->port_offset));

                switch (ch) {
                    case ' ':
                        /* this technically should never happen, but we should
                         * check anyway
                         */
                        if (i == 0)
                        {
                            p->error = stlparse_error_inval_state;
                            return i + 1;
                        }

                        i--;
                        ch = '/';
                    /* to accept requests like <method> <proto>://<host> <ver>
                     * we fallthrough to the next case.
                     */
                    case '/':
                        STLP_SET_BUF(ch);
                        p->path_offset = &p->buf[p->buf_idx - 1];

                        p->state       = s_after_slash_in_uri;
                        break;
                    default:
                        p->error       = stlparse_error_inval_reqline;
                        log_debug("[s_port]  inval_reqline");
                        log_stlparser__s_(p);

                        return i + 1;
                } /* switch */

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;
            case s_after_slash_in_uri:
                log_debug("[%p] s_after_slash_in_uri", p);

                res = 0;

                if (usual[ch >> 5] & (1 << (ch & 0x1f)))
                {
                    STLP_SET_BUF(ch);

                    p->state = s_check_uri;
                    break;
                }

                switch (ch) {
                    case ' ':
                    {
                        int r1 = hook_path_run(p, hooks, p->path_offset,
                                               (&p->buf[p->buf_idx] - p->path_offset));
                        int r2 = hook_uri_run(p, hooks, p->buf, p->buf_idx);

                        p->state   = s_http_09;
                        p->buf_idx = 0;

                        if (r1 || r2)
                        {
                            res = 1;
                        }
                    }

                    break;
                    case CR:
                        p->minor = 9;
                        p->state = s_almost_done;
                        break;
                    case LF:
                        p->minor = 9;
                        p->state = s_hdrline_start;
                        break;
                    case '.':
                    case '%':
                    case '/':
                    case '#':
                        STLP_SET_BUF(ch);
                        p->state       = s_uri;
                        break;
                    case '?':
                        res            = hook_path_run(p, hooks, p->path_offset,
                                                       (&p->buf[p->buf_idx] - p->path_offset));

                        STLP_SET_BUF(ch);

                        p->args_offset = &p->buf[p->buf_idx];
                        p->state       = s_uri;

                        break;
                    default:
                        STLP_SET_BUF(ch);

                        p->state = s_check_uri;
                        break;
                } /* switch */

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case s_check_uri:

                res = 0;

                do {
                    log_debug("[%p] s_check_uri", p);

                    if (usual[ch >> 5] & (1 << (ch & 0x1f))) {
                        STLP_SET_BUF(ch);
                    } else {
                        break;
                    }

                    ch = data[++i];
                } while (i < len);

                switch (ch) {
                    case ' ':
                    {
                        int r1 = 0;
                        int r2 = 0;

                        if (p->args_offset)
                        {
                            r1 = hook_args_run(p, hooks, p->args_offset,
                                               (&p->buf[p->buf_idx] - p->args_offset));
                        } else {
                            r1 = hook_path_run(p, hooks, p->path_offset,
                                               (&p->buf[p->buf_idx] - p->path_offset));
                        }

                        r2         = hook_uri_run(p, hooks, p->buf, p->buf_idx);
                        p->buf_idx = 0;
                        p->state   = s_http_09;

                        if (r1 || r2)
                        {
                            res = 1;
                        }
                    }
                    break;
                    case '/':
                        STLP_SET_BUF(ch);

                        p->state       = s_after_slash_in_uri;
                        break;
                    case CR:
                        p->minor       = 9;
                        p->buf_idx     = 0;
                        p->state       = s_almost_done;
                        break;
                    case LF:
                        p->minor       = 9;
                        p->buf_idx     = 0;

                        p->state       = s_hdrline_start;
                        break;
                    case '?':
                        res            = hook_path_run(p, hooks,
                                                       p->path_offset,
                                                       (&p->buf[p->buf_idx] - p->path_offset));
                        STLP_SET_BUF(ch);

                        p->args_offset = &p->buf[p->buf_idx];
                        p->state       = s_uri;
                        break;
                    default:
                        STLP_SET_BUF(ch);

                        p->state       = s_uri;
                        break;
                } /* switch */

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case s_uri:
                log_debug("[%p] s_uri", p);

                res = 0;

                do {
                    if (usual[ch >> 5] & (1 << (ch & 0x1f))) {
                        STLP_SET_BUF(ch);
                    } else {
                        break;
                    }

                    ch = data[++i];
                } while (i < len);

                switch (ch) {
                    case ' ':
                    {
                        int r1 = 0;
                        int r2 = 0;

                        if (p->args_offset)
                        {
                            r1 = hook_args_run(p, hooks, p->args_offset,
                                               (&p->buf[p->buf_idx] - p->args_offset));
                        } else {
                            r1 = hook_path_run(p, hooks, p->path_offset,
                                               (&p->buf[p->buf_idx] - p->path_offset));
                        }

                        p->buf_idx = 0;
                        p->state   = s_http_09;

                        if (r1 || r2)
                        {
                            res = 1;
                        }
                    }
                    break;
                    case CR:
                        p->minor   = 9;
                        p->buf_idx = 0;
                        p->state   = s_almost_done;
                        break;
                    case LF:
                        p->minor   = 9;
                        p->buf_idx = 0;
                        p->state   = s_hdrline_start;
                        break;
                    case '?':
                        /* RFC 3986 section 3.4:
                         * The query component is indicated by the
                         * first question mark ("?") character and
                         * terminated by a number sign ("#") character
                         * or by the end of the URI. */
                        if (!p->args_offset) {
                            res = hook_path_run(p, hooks, p->path_offset,
                                                (&p->buf[p->buf_idx] - p->path_offset));

                            STLP_SET_BUF(ch);
                            p->args_offset = &p->buf[p->buf_idx];
                            break;
                        }
                    /* Fall through. */
                    default:
                        STLP_SET_BUF(ch);
                        break;
                } /* switch */

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case s_http_09:
                log_debug("[%p] s_http_09", p);

                switch (ch) {
                    case ' ':
                        break;
                    case CR:
                        p->minor   = 9;
                        p->buf_idx = 0;
                        p->state   = s_almost_done;
                        break;
                    case LF:
                        p->minor   = 9;
                        p->buf_idx = 0;
                        p->state   = s_hdrline_start;
                        break;
                    case 'H':
                        p->buf_idx = 0;
                        p->state   = s_http_H;
                        break;
                    default:
                        p->error   = stlparse_error_inval_proto;
                        return i + 1;
                } /* switch */

                break;
            case s_http_H:
                log_debug("[%p] s_http_H", p);

                switch (ch) {
                    case 'T':
                        p->state = s_http_HT;
                        break;
                    default:
                        p->error = stlparse_error_inval_proto;
                        return i + 1;
                }
                break;
            case s_http_HT:
                switch (ch) {
                    case 'T':
                        p->state = s_http_HTT;
                        break;
                    default:
                        p->error = stlparse_error_inval_proto;
                        return i + 1;
                }
                break;
            case s_http_HTT:
                switch (ch) {
                    case 'P':
                        p->state = s_http_HTTP;
                        break;
                    default:
                        p->error = stlparse_error_inval_proto;
                        return i + 1;
                }
                break;
            case s_http_HTTP:
                switch (ch) {
                    case '/':
                        p->state = s_first_major_digit;
                        break;
                    default:
                        p->error = stlparse_error_inval_proto;
                        return i + 1;
                }
                break;
            case s_first_major_digit:
                if (ch < '1' || ch > '9')
                {
                    p->error = stlparse_error_inval_ver;
                    return i + 1;
                }

                p->major = ch - '0';
                p->state = s_major_digit;
                break;
            case s_major_digit:
                if (ch == '.')
                {
                    p->state = s_first_minor_digit;
                    break;
                }

                if (ch < '0' || ch > '9')
                {
                    p->error = stlparse_error_inval_ver;
                    return i + 1;
                }

                p->major = p->major * 10 + ch - '0';
                break;
            case s_first_minor_digit:
                if (ch < '0' || ch > '9')
                {
                    p->error = stlparse_error_inval_ver;
                    return i + 1;
                }

                p->minor = ch - '0';
                p->state = s_minor_digit;
                break;
            case s_minor_digit:
                switch (ch) {
                    case ' ':
                        if (stlp_likely(p->type == stlp_type_request))
                        {
                            p->state = s_spaces_after_digit;
                        } else if (p->type == stlp_type_response)
                        {
                            p->state = s_status;
                        }

                        break;
                    case CR:
                        p->state = s_almost_done;
                        break;
                    case LF:
                        /* LF without a CR? error.... */
                        p->error = stlparse_error_inval_reqline;
                        log_debug("[s_minor_digit] LF without CR!");
                        log_stlparser__s_(p);

                        return i + 1;
                    default:
                        if (ch < '0' || ch > '9')
                        {
                            p->error = stlparse_error_inval_ver;
                            return i + 1;
                        }

                        p->minor = p->minor * 10 + ch - '0';
                        break;
                } /* switch */
                break;
            case s_status:
                /* http response status code */
                if (ch == ' ')
                {
                    if (p->status)
                    {
                        p->state = s_status_text;
                    }
                    break;
                }

                if (ch < '0' || ch > '9')
                {
                    p->error = stlparse_error_status;
                    return i + 1;
                }

                p->status = p->status * 10 + ch - '0';

                if (++p->status_count == 3)
                {
                    p->state = s_space_after_status;
                }

                break;
            case s_space_after_status:
                switch (ch) {
                    case ' ':
                        p->state = s_status_text;
                        break;
                    case CR:
                        p->state = s_almost_done;
                        break;
                    case LF:
                        p->state = s_hdrline_start;
                        break;
                    default:
                        p->error = stlparse_error_generic;
                        return i + 1;
                }
                break;
            case s_status_text:
                switch (ch) {
                    case CR:
                        p->state = s_almost_done;
                        break;
                    case LF:
                        p->state = s_hdrline_start;
                        break;
                    default:
                        break;
                }
                break;
            case s_spaces_after_digit:
                switch (ch) {
                    case ' ':
                        break;
                    case CR:
                        p->state = s_almost_done;
                        break;
                    case LF:
                        p->state = s_hdrline_start;
                        break;
                    default:
                        p->error = stlparse_error_inval_ver;
                        return i + 1;
                }
                break;

            case s_almost_done:
                switch (ch) {
                    case LF:
                        if (p->type == stlp_type_response && p->status >= 100 && p->status < 200)
                        {
                            res = hook_on_hdrs_begin_run(p, hooks);

                            if (res)
                            {
                                p->error = stlparse_error_user;
                                return i + 1;
                            }

                            p->status       = 0;
                            p->status_count = 0;
                            p->state        = s_start;
                            break;
                        }

                        p->state = s_done;
                        res      = hook_on_hdrs_begin_run(p, hooks);
                        if (res)
                        {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }
                        break;
                    default:
                        p->error = stlparse_error_inval_reqline;
                        log_stlparser__s_(p);

                        return i + 1;
                } /* switch */
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
                log_debug("[%p] s_hdrline_start", p);

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
                        break;
                }

                break;
            case s_hdrline_hdr_key:
                log_debug("[%p] s_hdrline_hdr_key", p);

                do {
                    if (stlp_unlikely(ch == ':'))
                    {
                        res      = hook_hdr_key_run(p, hooks, p->buf, p->buf_idx);

                        /* figure out if the value of this header is valueable */
                        p->heval = eval_hdr_val_none;

                        switch (p->buf_idx + 1) {
                            case 5:
                                if (!strcasecmp(p->buf, "host"))
                                {
                                    p->heval = eval_hdr_val_hostname;
                                }
                                break;
                            case 11:
                                if (!strcasecmp(p->buf, "connection"))
                                {
                                    p->heval = eval_hdr_val_connection;
                                }
                                break;
                            case 13:
                                if (!strcasecmp(p->buf, "content-type"))
                                {
                                    p->heval = eval_hdr_val_content_type;
                                }
                                break;
                            case 15:
                                if (!strcasecmp(p->buf, "content-length"))
                                {
                                    p->heval = eval_hdr_val_content_length;
                                }
                                break;
                            case 17:
                                if (!strcasecmp(p->buf, "proxy-connection"))
                                {
                                    p->heval = eval_hdr_val_proxy_connection;
                                }
                                break;
                            case 18:
                                if (!strcasecmp(p->buf, "transfer-encoding"))
                                {
                                    p->heval = eval_hdr_val_transfer_encoding;
                                }
                                break;
                        } /* switch */

                        p->buf_idx = 0;
                        p->state   = s_hdrline_hdr_space_before_val;

                        if (res)
                        {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }

                        break;
                    }

                    switch (ch) {
                        case CR:
                            p->state = s_hdrline_hdr_almost_done;
                            break;
                        case LF:
                            p->state = s_hdrline_hdr_done;
                            break;
                        default:
                            STLP_SET_BUF(ch);
                            break;
                    }

                    if (p->state != s_hdrline_hdr_key)
                    {
                        break;
                    }

                    ch = data[++i];
                } while (i < len);

                break;

            case s_hdrline_hdr_space_before_val:
                log_debug("[%p] s_hdrline_hdr_space_before_val", p);

                switch (ch) {
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
                        break;
                } /* switch */
                break;
            case s_hdrline_hdr_val:
                err = 0;

                do {
                    log_debug("[%p] s_hdrline_hdr_val", p);
                    if (ch == CR)
                    {
                        switch (p->heval) {
                            case eval_hdr_val_none:
                                break;
                            case eval_hdr_val_hostname:
                                if (hook_hostname_run(p, hooks, p->buf, p->buf_idx))
                                {
                                    p->state = s_hdrline_hdr_almost_done;
                                    p->error = stlparse_error_user;
                                    return i + 1;
                                }

                                break;
                            case eval_hdr_val_content_length:
                                p->content_len      = str_to_uint64(p->buf, p->buf_idx, &err);
                                p->orig_content_len = p->content_len;

                                log_debug("[%p] s_hdrline_hdr_val content-lenth = %zu", p, p->content_len);

                                if (err == 1)
                                {
                                    p->error = stlparse_error_too_big;
                                    return i + 1;
                                }

                                break;
                            case eval_hdr_val_connection:
                                switch (p->buf[0]) {
                                    char         A_case;
                                    char         C_case;
                                    const char * S_buf;

                                    case 'K':
                                    case 'k':
                                        if (p->buf_idx != 10)
                                        {
                                            break;
                                        }

                                        A_case = (p->buf[5] == 'A') ?  'A' : 'a';
                                        S_buf  = (const char *)(p->buf + 1);

                                        if (_str9cmp(S_buf,
                                                     'e', 'e', 'p', '-', A_case, 'l', 'i', 'v', 'e'))
                                        {
                                            p->flags |= parser_flag_connection_keep_alive;
                                        }
                                        break;
                                    case 'c':
                                    case 'C':
                                        if (p->buf_idx != 5)
                                        {
                                            break;
                                        }

                                        C_case = (p->buf[0] == 'C') ? 'C' : 'c';
                                        S_buf  = (const char *)p->buf;

                                        if (_str5cmp(S_buf, C_case, 'l', 'o', 's', 'e'))
                                        {
                                            p->flags |= parser_flag_connection_close;
                                        }
                                        break;
                                } /* switch */
                                break;
                            case eval_hdr_val_transfer_encoding:
                                if (p->buf_idx != 7)
                                {
                                    break;
                                }

                                switch (p->buf[0]) {
                                    const char * S_buf;

                                    case 'c':
                                    case 'C':
                                        if (p->buf_idx != 7)
                                        {
                                            break;
                                        }

                                        S_buf = (const char *)(p->buf + 1);

                                        if (_str6cmp(S_buf, 'h', 'u', 'n', 'k', 'e', 'd'))
                                        {
                                            p->flags |= parser_flag_chunked;
                                        }

                                        break;
                                }

                                break;
                            case eval_hdr_val_content_type:
                                if (p->buf_idx != 9)
                                {
                                    break;
                                }

                                switch (p->buf[0]) {
                                    const char * S_buf;

                                    case 'm':
                                    case 'M':
                                        S_buf = (const char *)(p->buf + 1);

                                        if (_str8cmp(S_buf, 'u', 'l', 't', 'i', 'p', 'a', 'r', 't'))
                                        {
                                            p->multipart = 1;
                                        }

                                        break;
                                }

                                break;
                            case eval_hdr_val_proxy_connection:
                            default:
                                break;
                        } /* switch */

                        p->state = s_hdrline_hdr_almost_done;

                        break;
                    }

                    switch (ch) {
                        case LF:
                            /* LF before CR? invalid */
                            p->error = stlparse_error_inval_hdr;
                            return i + 1;
                        default:
                            STLP_SET_BUF(ch);
                            break;
                    } /* switch */

                    if (p->state != s_hdrline_hdr_val)
                    {
                        break;
                    }

                    ch = data[++i];
                } while (i < len);

                break;
            case s_hdrline_hdr_almost_done:
                log_debug("[%p] s_hdrline_hdr_almost_done", p);

                res = 0;
                switch (ch) {
                    case LF:
                        if (p->flags & parser_flag_trailing)
                        {
                            res      = hook_on_msg_complete_run(p, hooks);
                            p->state = s_start;
                            break;
                        }

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
            case s_hdrline_hdr_done:
                log_debug("[%p] s_hdrline_hdr_done", p);

                switch (ch) {
                    case CR:
                        res      = hook_hdr_val_run(p, hooks, p->buf, p->buf_idx);
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
                        res        = hook_hdr_val_run(p, hooks, p->buf, p->buf_idx);
                        p->buf_idx = 0;

                        STLP_SET_BUF(ch);

                        p->state   = s_hdrline_hdr_key;

                        if (res) {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }

                        break;
                }         /* switch */
                break;
            case s_hdrline_almost_done:
                log_debug("[%p] s_hdrline_almost_done", p);

                switch (ch) {
                    case LF:
                        res = hook_on_hdrs_complete_run(p, hooks);

                        if (res != 0)
                        {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }

                        p->buf_idx = 0;

                        if (p->flags & parser_flag_trailing)
                        {
                            res      = hook_on_msg_complete_run(p, hooks);
                            p->state = s_start;
                        }
                        else if (p->flags & parser_flag_chunked)
                        {
                            p->state = s_chunk_size_start;
                        }
                        else if (p->content_len > 0)
                        {
                            p->state = s_body_read;
                        }
                        else if (p->content_len == 0)
                        {
                            if (p->type == stomp_type) {
                                p->state = s_body_read_no_content_length;
                            } else {
                                res = hook_on_msg_complete_run(p, hooks);
                                p->state = s_start;
                            }
                        } else {
                            p->state = s_hdrline_done;
                        }

                        if (res != 0)
                        {
                            p->error = stlparse_error_user;
                            return i + 1;
                        }
                        break;

                    default:
                        p->error = stlparse_error_inval_hdr;
                        return i + 1;
                }         /* switch */

                if (res != 0)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;
            case s_hdrline_done:
                log_debug("[%p] s_hdrline_done", p);

                res = 0;

                if (p->flags & parser_flag_trailing)
                {
                    res      = hook_on_msg_complete_run(p, hooks);
                    p->state = s_start;
                } else if (p->flags & parser_flag_chunked)
                {
                    p->state = s_chunk_size_start;
                    i--;
                } else if (p->content_len > 0)
                {
                    p->state = s_body_read;
                    i--;
                } else if (p->content_len == 0)
                {
                    res      = hook_on_msg_complete_run(p, hooks);
                    p->state = s_start;
                }

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;
            case s_chunk_size_start:
                c = unhex[(unsigned char)ch];

                if (c == -1)
                {
                    p->error = stlparse_error_inval_chunk_sz;
                    return i + 1;
                }

                p->content_len = c;
                p->state       = s_chunk_size;
                break;
            case s_chunk_size:
                if (ch == CR)
                {
                    p->state = s_chunk_size_almost_done;
                    break;
                }

                c = unhex[(unsigned char)ch];

                if (c == -1)
                {
                    p->error = stlparse_error_inval_chunk_sz;
                    return i + 1;
                }

                p->content_len *= 16;
                p->content_len += c;
                break;

            case s_chunk_size_almost_done:
                if (ch != LF)
                {
                    p->error = stlparse_error_inval_chunk_sz;
                    return i + 1;
                }

                p->orig_content_len = p->content_len;

                if (p->content_len == 0)
                {
                    res       = hook_on_chunks_complete_run(p, hooks);

                    p->flags |= parser_flag_trailing;
                    p->state  = s_hdrline_start;
                } else {
                    res      = hook_on_new_chunk_run(p, hooks);

                    p->state = s_chunk_data;
                }

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case s_chunk_data:
                res = 0;
                {
                    const char * pp      = &data[i];
                    const char * pe      = (const char *)(data + len);
                    size_t       to_read = _MIN_READ(pe - pp, p->content_len);

                    if (to_read > 0)
                    {
                        res = hook_body_run(p, hooks, pp, to_read);

                        i  += to_read - 1;
                    }

                    if (to_read == p->content_len)
                    {
                        p->state = s_chunk_data_almost_done;
                    }

                    p->content_len -= to_read;
                }

                if (res)
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case s_chunk_data_almost_done:
                if (ch != CR)
                {
                    p->error = stlparse_error_inval_chunk;
                    return i + 1;
                }

                p->state = s_chunk_data_done;
                break;

            case s_chunk_data_done:
                if (ch != LF)
                {
                    p->error = stlparse_error_inval_chunk;
                    return i + 1;
                }

                p->orig_content_len = 0;
                p->state = s_chunk_size_start;

                if (hook_on_chunk_complete_run(p, hooks))
                {
                    p->error = stlparse_error_user;
                    return i + 1;
                }

                break;

            case s_body_read:
                res = 0;
                {
                    const char * pp      = &data[i];
                    const char * pe      = (const char *)(data + len);
                    size_t       to_read = _MIN_READ(pe - pp, p->content_len);

                    if (to_read > 0) {
                        res = hook_body_run(p, hooks, pp, to_read);

                        i  += to_read - 1;
                        p->content_len -= to_read;
                    }

                    if (res) {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }

                    if (p->content_len == 0) {
                        if (p->type = stomp_type)
                        {
                            p->state = s_body_check_0;
                        }
                        else
                        {
                            res      = hook_on_msg_complete_run(p, hooks);
                            p->state = s_start;
                        }
                    }

                    if (res)
                    {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }
                }

                break;

            case s_body_read_no_content_length:
                // сохраняем позицию начала боди
                // это будет следующий символ, после LF
                body_index = i;

                // если не указана длинна контента
                // мыдолжны искать первый символ '\0'
                do
                {
                    if (ch == '\0')
                    {
                        size_t to_read = (size_t)(i - body_index);
                        if (to_read > 0) {
                            res = hook_body_run(p, hooks, &data[body_index], to_read);

                            if (res) {
                                p->error = stlparse_error_user;
                                return i + 1;
                            }
                        }

                        res      = hook_on_msg_complete_run(p, hooks);
                        p->state = s_start;

                        if (res) {
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
                size_t to_read = (size_t)(i - body_index);
                if (to_read > 0) {
                    res = hook_body_run(p, hooks, &data[body_index], to_read);

                    if (res) {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }
                }

                break;

        case s_body_check_0:
                // проверка на наличие \0 в конце пакета
                if (ch != '\0')
                {
                    p->error = stlparse_error_inval_reqline;
                    p->state = s_start;
                    return i + 1;
                }
                else
                {
                    res      = hook_on_msg_complete_run(p, hooks);
                    p->state = s_start;

                    if (res) {
                        p->error = stlparse_error_user;
                        return i + 1;
                    }
                }

            break;

            default:
                log_debug("[%p] This is a silly state....", p);
                p->error = stlparse_error_inval_state;
                return i + 1;
        } /* switch */

        /* If we successfully completed a request/response we return
         * to caller, and leave it up to him to call us again if
         * parsing should continue. */
        if (p->state == s_start)
        {
            return i + 1;
        }
    }     /* switch */

    return i;
}         /* stlparser_run */
