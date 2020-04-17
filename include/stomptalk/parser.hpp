#pragma once

#include "stomptalk/parser_hook.hpp"
#include "stomptalk/stackbuf.hpp"
#include <iterator>

namespace stomptalk {

class parser
{
    typedef const char* (parser::*state_fn_type)(parser_hook& hook,
        const char* curr, const char *end);

    struct heval
    {
        enum type
            : std::size_t
        {
            none = 0,
            content_length,
            content_type
        };
    };

public:
    std::uint64_t content_len_{};
    std::uint64_t orig_content_len_{};
    std::uint64_t bytes_read_{};
    std::uint64_t total_bytes_read_{};

    const char* start_state(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* method_state(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* method_amost_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* method_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* hdrline_hdr_key(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* hdrline_val(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* hdrline_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* hdrline_almost_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* almost_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* body_read(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* body_read_no_length(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    const char* frame_end(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    state_fn_type state_fn_{&parser::start_state};
    heval::type heval_{};

    stackbuf<2048> sbuf_{};

    bool push(char ch) noexcept;

    void eval_header(const strref& val) noexcept;
    void eval_value(const strref& val) noexcept;

public:
    parser() = default;

    void clear() noexcept;

    std::size_t run(parser_hook& hook,
        const char *ptr, std::size_t len) noexcept;

};

} // namespace stomptalk
