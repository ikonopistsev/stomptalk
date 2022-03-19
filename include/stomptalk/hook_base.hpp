#pragma once

#include <cstddef>
#include <cstdint>

namespace stomptalk {

class parser_hook;

struct hook_base
{
    virtual void on_frame(parser_hook&, const char *frame_start) noexcept = 0;
 
    virtual void on_method(parser_hook&, 
        std::uint64_t method_id, const char*, std::size_t) noexcept = 0;
 
    virtual void on_hdr_key(parser_hook&, 
        std::uint64_t hader_id, const char*, std::size_t) noexcept = 0;
 
    virtual void on_hdr_val(parser_hook&, const char*, std::size_t) noexcept = 0;
 
    virtual void on_body(parser_hook&, const void*, std::size_t) noexcept = 0;
 
    virtual void on_frame_end(parser_hook&, const char *frame_end) noexcept = 0;
};

} // namespace stomptalk
