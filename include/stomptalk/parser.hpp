#pragma once

#include "stomptalk/parser_hook.hpp"
#include "stomptalk/stackbuf.hpp"
#include "stomptalk/hashval.hpp"
#include <iterator>

namespace stomptalk {

#ifndef STOMPTALK_PARSER_STACK_SIZE
#define STOMPTALK_PARSER_STACK_SIZE 4096
#endif

STOMPTALK_FORCE_INLINE
static bool ch_isprint(unsigned char ch) noexcept { 
    return ch >= 32 && ch <= 126; 
}

STOMPTALK_FORCE_INLINE
static bool ch_isprint_nospace(unsigned char ch) noexcept { 
    return ch > 32 && ch <= 126; 
}

STOMPTALK_FORCE_INLINE
static bool ch_isupper(unsigned char ch) noexcept { 
    return ch >= 'A' && ch <= 'Z';
}

class STOMPTALK_EXPORT parser
{
public:
    using pointer = const char*;
    using state_type = pointer (parser::*)(parser_hook&, pointer, pointer);

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

    state_type state_{&parser::start_state};
    stackbuf<char, STOMPTALK_PARSER_STACK_SIZE> sbuf_{};
    hashval<char> hval_{};
    bool escape_{false};

    STOMPTALK_FORCE_INLINE
    auto push(parser_hook& hook, char c) noexcept 
    {
        if (sbuf_.push(c)) 
        {
            hval_.push(c);
            return true;
        }

        hook.set(stomptalk_error_too_big); 
        return false;
    }

    STOMPTALK_FORCE_INLINE
    auto tailcall(parser_hook& hook, state_type next, 
        pointer curr, pointer end) noexcept 
    {
        state_ = next;
        return (curr < end) ? 
            (this->*next)(hook, curr, end) : curr;
    }       

public:
    parser() = default;

    std::size_t run(parser_hook& hook,
        const char *ptr, std::size_t len) noexcept;

};

} // namespace stomptalk
