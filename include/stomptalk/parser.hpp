#pragma once

#include "stomptalk/parser_hook.hpp"
#include "stomptalk/stackbuf.hpp"
#include <iterator>

namespace stomptalk {

class parser
{
    class result
    {
        parser_hook::error::type error_{parser_hook::error::none};
        const char *position_{nullptr};

    public:
        result() = default;

        result(const char *position) noexcept
            : position_(position)
        {   }

        result(parser_hook::error::type error, const char *position) noexcept
            : error_(error)
            , position_(position)
        {   }

        bool ok() const noexcept
        {
            return error_ == parser_hook::error::none;
        }

        parser_hook::error::type error() const noexcept
        {
            return error_;
        }

        const char *position() const noexcept
        {
            return position_;
        }
    };

    typedef result (parser::*state_fn_type)(parser_hook& hook,
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

    result start_state(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result method_state(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result method_amost_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result method_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result hdrline_hdr_key(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result hdrline_val(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result hdrline_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result hdrline_almost_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result almost_done(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result body_read(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result body_read_no_length(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    result frame_end(parser_hook& hook,
        const char* curr, const char *end) noexcept;

    state_fn_type state_fn_{&parser::start_state};
    heval::type heval_{};

    stackbuf<2048> sbuf_{};

    bool push(char ch) noexcept;

    void eval_header(const char* text, std::size_t size) noexcept;
    void eval_value(const char* text, std::size_t size) noexcept;

public:
    parser() = default;

    void clear() noexcept;

    std::size_t run(parser_hook& hook, const char *ptr, std::size_t len) noexcept;

};

} // namespace stomptalk
