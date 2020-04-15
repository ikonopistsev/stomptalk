#pragma once

#include "stomptalk/method.hpp"

#include <cstdint>

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
    method::type method_{method::unknown};
    error::type error_{error::none};
    content::type content_type_{content::none};

    bool eval_method(const char* value, std::size_t size) noexcept;

public:
    parser_hook() = default;

    virtual ~parser_hook() noexcept;

    void set(error::type value) noexcept
    {
        error_ = value;
    }

    void set(content::type value) noexcept
    {
        content_type_ = value;
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

    void on_begin() noexcept;

    void on_method(const char* value, std::size_t size) noexcept;

    void on_hdrs_begin() noexcept;

    void on_hdr_key(const char* text, std::size_t size) noexcept;

    void on_hdr_val(const char* text, std::size_t size) noexcept;

    void on_hdrs_end() noexcept;

    void on_body(const void* data, std::size_t size) noexcept;

    void on_end() noexcept;
};

} // stomptalk
