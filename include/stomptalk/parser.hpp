#pragma once

#include "stomptalk/parser_hook.hpp"
#include "stomptalk/stackbuf.hpp"
#include <iterator>

namespace stomptalk {

#ifndef STOMPTALK_PARSER_STACK_SIZE
#define STOMPTALK_PARSER_STACK_SIZE 4096
#endif

class parser
{
    using pointer = const char*;
    using state_fn_type = pointer (parser::*)(parser_hook&, pointer, pointer);

private:
    pointer start_state(parser_hook& hook,
        pointer curr, pointer end) noexcept;

    pointer method_state(parser_hook& hook,
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
    stackbuf<char, STOMPTALK_PARSER_STACK_SIZE> sbuf_{};
    fnv1a::type hval_{};

    void hash_add(char ch) noexcept
    {
        hval_ = fnv1a::calc(ch, hval_);
    }
public:
    parser() = default;

    std::size_t run(parser_hook& hook,
        const char *ptr, std::size_t len) noexcept;

};

} // namespace stomptalk
