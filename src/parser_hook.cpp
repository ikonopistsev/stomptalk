#include "stomptalk/parser_hook.hpp"

namespace stomptalk {

void parser_hook::reset() noexcept
{
    no_error();
    content_len_ = 0;
}

void parser_hook::on_frame() noexcept
{
    hook_.on_frame(*this);
}

void parser_hook::on_method(std::string_view text) noexcept
{
    hook_.on_method(*this, text);
}

void parser_hook::on_hdr_key(std::string_view text) noexcept
{
    hook_.on_hdr_key(*this, text);
}

void parser_hook::on_hdr_val(std::string_view text) noexcept
{
    hook_.on_hdr_val(*this, text);
}

void parser_hook::on_body(const void* ptr, std::size_t size) noexcept
{
    hook_.on_body(*this, ptr, size);
}

void parser_hook::on_frame_end() noexcept
{
    hook_.on_frame_end(*this);
}

void parser_hook::no_error() noexcept
{
    error_ = error::none;
}

void parser_hook::too_big() noexcept
{
    error_ = error::too_big;
}

void parser_hook::inval_reqline() noexcept
{
    error_ = error::inval_reqline;
}

void parser_hook::inval_method() noexcept
{
    error_ = error::inval_method;
}

void parser_hook::inval_frame() noexcept
{
    error_ = error::inval_frame;
}

void parser_hook::next_frame() noexcept
{
    error_ = error::next_frame;
}

void parser_hook::generic_error() noexcept
{
    error_ = error::generic;
}

std::string_view parser_hook::error_str() const noexcept
{
    static const std::string_view str[] = {
        "none", "stack overflow", "invalid request line",
        "invalid method", "invalid frame", "call next frame",
        "generic error"
    };

    return (error_ >= error::generic) ?
        str[error::generic] : str[error_];
}

} // stomptalk
