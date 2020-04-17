#pragma once

#include "stomptalk/parser_hook.hpp"
#include "stomptalk/stackbuf.hpp"
#include <iterator>

namespace stomptalk {

class parser
{
    typedef const char* pointer;
    typedef pointer (parser::*state_fn_type)(parser_hook&, pointer, pointer);

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

    pointer start_state(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer method_state(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer method_amost_done(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer method_done(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer hdrline_hdr_key(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer hdrline_val(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer hdrline_done(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer hdrline_almost_done(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer done(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer almost_done(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer body_read(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer body_read_no_length(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer frame_end(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    state_fn_type state_fn_{&parser::start_state};

    heval::type heval_{};

    stackbuf<2048> sbuf_{};

    void eval_header(std::string_view val) noexcept;
    void eval_value(std::string_view val) noexcept;

public:
    parser() = default;

    void clear() noexcept;

    std::size_t run(parser_hook& hook,
        const char *ptr, std::size_t len) noexcept;

};

} // namespace stomptalk
