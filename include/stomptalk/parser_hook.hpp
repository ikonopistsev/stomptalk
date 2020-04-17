#pragma once

#include "stomptalk/user_hook.hpp"

namespace stomptalk {

class parser;

template<class T>
class hookfn;

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
            next_frame,
            generic
        };
    };

    struct content
    {
        enum type
            : std::size_t
        {
            none,
            stream,
            text,
            html,
            json,
            xml,
            other
        };
    };

protected:
    user_hook hook_{};
    method::type method_{method::unknown};
    error::type error_{error::none};
    content::type content_type_{content::none};
    std::int64_t content_len_{};

    bool eval_method(const strref& val) noexcept;

public:
    parser_hook() = default;

    void set(error::type value) noexcept
    {
        error_ = value;
    }

    void set(content::type value) noexcept
    {
        content_type_ = value;
    }

    void set(const user_hook& hook) noexcept
    {
        hook_ = hook;
    }

    template<class T>
    void set(const T& hook)
    {
        hook.apply(*this);
    }

    bool ok() const noexcept
    {
        return get_error() == error::none;
    }

    stomptalk::method::type get_method() const noexcept
    {
        return method_;
    }

    error::type get_error() const noexcept
    {
        return error_;
    }

    content::type get_content_type() const noexcept
    {
        return content_type_;
    }

    void set_content_length(std::int64_t content_length) noexcept
    {
        content_len_ = content_length;
    }

    void on_begin() noexcept;

    void on_method(const strref& val) noexcept;

    void on_hdr_key(const strref& val) noexcept;

    void on_hdr_val(const strref& val) noexcept;

    void on_body(const strref& val) noexcept;

    void on_frame() noexcept;

    void next_frame() noexcept;
};

} // stomptalk
