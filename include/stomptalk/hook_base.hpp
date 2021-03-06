#pragma once

#include "stomptalk/tag.hpp"
#include <string_view>
#include <cassert>
#include <cstdint>

namespace stomptalk {

class parser_hook;

class hook_base
{
public:
    hook_base() = default;

    virtual ~hook_base() = default;

    virtual void on_frame(parser_hook&, const char *frame_start) noexcept = 0;

    virtual void on_method(parser_hook&, std::string_view) noexcept = 0;

    virtual void on_hdr_key(parser_hook&, std::string_view) noexcept = 0;

    virtual void on_hdr_val(parser_hook&, std::string_view) noexcept = 0;

    virtual void on_body(parser_hook&, const void*, std::size_t) noexcept = 0;

    virtual void on_frame_end(parser_hook&, const char *frame_end) noexcept = 0;
};

} // namespace stomptalk
