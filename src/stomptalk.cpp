#include "stomptalk/hook_base.hpp"
#include "stomptalk/antoull.hpp"
#include "stomptalk/parser.hpp"
#include "stomptalk/parser.h"

struct stomptalk_parser final
    : stomptalk::hook_base
{
    std::size_t run(const char *begin, std::size_t len) noexcept
    {
        return parser_.run(hook_, begin, len);
    }

    std::uint64_t content_length() const noexcept
    {
        return hook_.content_length();
    }

    std::size_t get_error() const noexcept
    {
        return hook_.error();
    }

    void set(const stomptalk_parser_hook *user, void *arg) noexcept
    {
        if (user)
        {
            on_frame_ = user->on_frame;
            on_method_ = user->on_method;
            on_hdr_key_ = user->on_hdr_key;
            on_hdr_val_ = user->on_hdr_val;
            on_body_ = user->on_body;
            on_frame_end_ = user->on_frame_end;
        }
        else
        {
            on_frame_ = on_frame_end_ = nullptr;
            on_method_ = on_hdr_key_ = nullptr;
            on_hdr_val_ = on_body_ = nullptr;
        }

        user_arg_ = arg;
    }

    void* user_arg() const noexcept
    {
        return user_arg_;
    }

private:
    stomptalk::parser parser_{};
    stomptalk::parser_hook hook_{*this};
    stomptalk_cb on_frame_{};
    stomptalk_id_cb on_method_{};
    stomptalk_id_cb on_hdr_key_{};
    stomptalk_data_cb on_hdr_val_{};
    stomptalk_data_cb on_body_{};
    stomptalk_cb on_frame_end_{};
    void* user_arg_{};

    void on_frame(
        stomptalk::parser_hook&, const char* ptr) noexcept override
    {
        if (on_frame_)
            on_frame_(this, ptr);
    }

    void on_method(stomptalk::parser_hook& hook, std::uint64_t id,
        const char *at, std::size_t len) noexcept override
    {
        if (on_method_)
        {
            if (on_method_(this, id, at, len))
                hook.set(stomptalk_error_generic);
        }
    }

    void on_hdr_key(stomptalk::parser_hook& hook, std::uint64_t id,
        const char *at, std::size_t len) noexcept override
    {
        if (on_hdr_key_)
        {
            if (on_hdr_key_(this, id, at, len))
                hook.set(stomptalk_error_generic);
        }
    }

    void on_hdr_val(stomptalk::parser_hook& hook,
        const char *at, std::size_t len) noexcept override
    {
        if (on_hdr_val_)
        {
            if (on_hdr_val_(this, at, len))
                hook.set(stomptalk_error_generic);
        }
    }

    void on_body(stomptalk::parser_hook& hook,
        const void* ptr, std::size_t size) noexcept override
    {
        if (on_body_)
        {
            if (on_body_(this, static_cast<const char*>(ptr), size))
                hook.set(stomptalk_error_generic);
        }
    }

    void on_frame_end(
        stomptalk::parser_hook&, const char* ptr) noexcept override
    {
        if (on_frame_end_)
            on_frame_end_(this, ptr);
    }
};

stomptalk_parser* stomptalk_parser_new()
{
    return new (std::nothrow) stomptalk_parser();
}

void stomptalk_parser_free(stomptalk_parser *parser)
{
    delete parser;
}

size_t stomptalk_parser_execute(stomptalk_parser *parser,
                                const char *data, size_t len)
{
    assert(data);
    assert(parser);

    return static_cast<size_t>(parser->run(data, len));
}

void stomptalk_set_hook(stomptalk_parser *parser,
                        const stomptalk_parser_hook *hook, void *arg)
{
    assert(parser);

    parser->set(hook, arg);
}

void *stomptalk_get_hook_arg(stomptalk_parser *parser)
{
    assert(parser);

    return parser->user_arg();
}

uint64_t stomptalk_get_content_length(stomptalk_parser *parser)
{
    assert(parser);

    return parser->content_length();
}

size_t stomptalk_get_error(stomptalk_parser *parser)
{
    assert(parser);

    return parser->get_error();
}

int64_t stomptalk_antoull(const char *text, size_t len)
{
    return static_cast<int64_t>(stomptalk::antoull(text, len));
}

size_t stomptalk_antoll(int64_t *res, const char *text, size_t len)
{
    assert(res);

    if (text && len)
    {
        size_t minus = 0;

        if (*text == '-')
        {
            minus = 1;
            ++text;
            --len;
        }

        auto num = static_cast<int64_t>(stomptalk::antoull(text, len));
        if (num)
        {
            *res = minus ? -num : num;
            return 1;
        }
    }

    return 0;
}

const char* stomptalk_trim(const char *text, size_t *len)
{
    size_t l = *len;
    while (l && (*text == ' '))
        ++text, --l;

    if (l && text)
    {
        const char *last = text + l  - 1;
        while ((text != last) && (*last == ' '))
            --last, --l;

        *len = l;
        return text;
    }

    *len = 0;
    return nullptr;
}

const char* stomptalk_method_str(uint64_t method)
{
    switch (method)
    {
    case st_method_none: return "none";
    case st_method_abort: return "ABORT";
    case st_method_ack: return "ACK";
    case st_method_begin: return "BEGIN";
    case st_method_commit: return "COMMIT";
    case st_method_connect: return "CONNECT";
    case st_method_connected: return "CONNECTED";
    case st_method_disconnect: return "DISCONNECT";
    case st_method_error: return "ERROR";
    case st_method_message: return "MESSAGE";
    case st_method_nack: return "NACK";
    case st_method_receipt: return "RECEIPT";
    case st_method_send: return "SEND";
    case st_method_stomp: return "STOMP";
    case st_method_subscribe: return "SUBSCRIBE";
    case st_method_unsubscribe: return "UNSUBSCRIBE";
    default: ;
    }
    return "unknown";
}

const char* stomptalk_get_error_str(size_t error)
{
    static const char * const str[] = {
        "none", "stack overflow", "invalid request line",
        "invalid method", "invalid frame", "inval content size",
        "call next frame", "generic error"
    };

    return (error >= stomptalk_error_generic) ?
        str[stomptalk_error_generic] : str[error];
}

const char* stomptalk_version()
{
#define STOMPTALK_STR_HELPER(x) #x
#define STOMPTALK_STR(x) STOMPTALK_STR_HELPER(x)
    return STOMPTALK_STR(STOMPTALK_VERSION);
#undef STOMPTALK_STR_HELPER
#undef STOMPTALK_STR
}