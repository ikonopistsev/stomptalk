#pragma once

#include "stomptalk/user_hook.hpp"

namespace stomptalk {

class parser;
class parser_hook
{
public:
    typedef method::type_id method_type_id;
    typedef header::tag::content_type::content_type_id content_type_id;

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
            next_frame,
            generic
        };
    };

protected:
    hook_base& hook_;

    error::type error_{error::none};
    method_type_id::type method_{method_type_id::unknown};
    std::uint64_t content_len_{};
    content_type_id::type content_type_{content_type_id::none};

    bool eval_method(std::string_view val) noexcept;

public:
    parser_hook(hook_base& hook)
        : hook_(hook)
    {   }

    void set(error::type value) noexcept
    {
        error_ = value;
    }

    void set(content_type_id::type value) noexcept
    {
        content_type_ = value;
    }

    void eval_content_type(std::string_view val) noexcept;

    bool ok() const noexcept
    {
        return get_error() == error::none;
    }

    method_type_id::type get_method() const noexcept
    {
        return method_;
    }

    error::type get_error() const noexcept
    {
        return error_;
    }

    content_type_id::type get_content_type() const noexcept
    {
        return content_type_;
    }

    void set_content_length(std::uint64_t content_length) noexcept
    {
        content_len_ = content_length;
    }

    void on_frame() noexcept
    {
        hook_.on_frame(*this);
    }

    void on_method(std::string_view text) noexcept
    {
        if (!eval_method(text))
            method_ = method::type_id::unknown;

        hook_.on_method(*this, std::move(text));
    }

    void on_hdr_key(std::string_view text) noexcept
    {
        hook_.on_hdr_key(*this, std::move(text));
    }

    void on_hdr_val(std::string_view text) noexcept
    {
        hook_.on_hdr_val(*this, std::move(text));
    }

    void on_body(const void* ptr, std::size_t size) noexcept
    {
        hook_.on_body(*this, ptr, size);
    }

    void on_frame_end() noexcept
    {
        hook_.on_frame_end(*this);
    }

    void next_frame() noexcept;
};

} // stomptalk
