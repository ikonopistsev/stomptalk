#pragma once

#include "stomptalk/hook_base.hpp"

namespace stomptalk {

class parser;
class parser_hook
{
public:
    struct error
    {
        enum type
            : std::size_t
        {
            none = 0,
            too_big,
            inval_reqline,
            inval_method,
            inval_frame,
            inval_content_size,
            next_frame,
            generic
        };
    };

protected:
    hook_base& hook_;
    std::uint64_t content_len_{};
    error::type error_{error::none};
    std::size_t next_{};
    std::size_t mask_{};

public:
    parser_hook(hook_base& hook)
        : hook_(hook)
    {   }

    void reset() noexcept;

    bool ok() const noexcept
    {
        return error() == error::none;
    }

    error::type error() const noexcept
    {
        return error_;
    }

    void set(error::type) = delete;

    void set(std::uint64_t content_length) noexcept
    {
        content_len_ = content_length;
    }

    std::uint64_t content_length() const noexcept
    {
        return content_len_;
    }

    void on_frame(const char *frame_start) noexcept;

    void on_method(std::string_view text) noexcept;

    void on_hdr_key(std::string_view text) noexcept;

    void on_hdr_val(std::string_view text) noexcept;

    void on_body(const void* ptr, std::size_t size) noexcept;

    void on_frame_end(const char *frame_end) noexcept;

    // errors
    void no_error() noexcept;

    void too_big() noexcept;

    void inval_reqline() noexcept;

    void inval_method() noexcept;

    void inval_frame() noexcept;

    void inval_content_size() noexcept;

    void next_frame() noexcept;

    void generic_error() noexcept;

    std::string_view error_str() const noexcept;
};

} // stomptalk
