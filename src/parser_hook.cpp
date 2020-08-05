#include "stomptalk/parser_hook.hpp"

namespace stomptalk {

void parser_hook::reset() noexcept
{
    error_ = error::none;
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

void parser_hook::next_frame() noexcept
{
    error_ = error::next_frame;
}

} // stomptalk