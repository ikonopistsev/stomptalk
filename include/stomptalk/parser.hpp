#pragma once

#include "stomptalk/parser_hook.hpp"
#include "stomptalk/stackbuf.hpp"
#include <cstring>
#include <iterator>

namespace stomptalk {

#ifndef STOMPTALK_PARSER_STACK_SIZE
#define STOMPTALK_PARSER_STACK_SIZE 4096
#endif

STOMPTALK_FORCE_INLINE
static bool ch_isupper(unsigned char ch) noexcept { 
    return ch >= 'A' && ch <= 'Z';
}

namespace detail {

// Разделители уже загруженного окна входа. Живёт на стеке run() и передаётся
// по значению в регистрах, поэтому не может пережить кусок, на который указывает.
struct scan_window
{
    const char* base;
    std::uint64_t mask;
};

} // namespace detail

template<class H>
class parser
{
public:
    using hook_type = parser_hook<H>;
    using pointer = const char*;
    using window = detail::scan_window;
    using state_type = pointer (parser::*)(hook_type&, pointer, pointer, window);

private:
    pointer start_state(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    // У каждого элемента короткое состояние для частого случая, когда он весь в буфере,
    // и побайтовое для разорванных элементов и escape.
    pointer method_state(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer method_state_bytes(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer hdrline_hdr_key(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer hdrline_hdr_key_bytes(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer hdrline_val(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer hdrline_val_bytes(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer hdrline_done(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer hdrline_almost_done(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer done(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer almost_done(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer body_read(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer body_read_no_length(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    pointer frame_end(hook_type& hook,
        pointer curr, pointer end, window w) noexcept;

    state_type state_{&parser::start_state};
    stackbuf<char, STOMPTALK_PARSER_STACK_SIZE> sbuf_{};
    bool escape_{false};
    // CONNECT и CONNECTED не экранируют заголовки ради совместимости со STOMP 1.0
    bool raw_headers_{false};

    STOMPTALK_FORCE_INLINE
    auto push(hook_type& hook, char c) noexcept 
    {
        if (sbuf_.push(c))
            return true;

        hook.set(stomptalk_error_too_big); 
        return false;
    }

    STOMPTALK_FORCE_INLINE
    auto tailcall(hook_type& hook, state_type next,
        pointer curr, pointer end, window w) noexcept
    {
        state_ = next;
#if defined(__OPTIMIZE__)
        // каллбек мог выставить ошибку, разбор не должен идти дальше неё
        return ((curr < end) && hook.ok()) ?
            (this->*next)(hook, curr, end, w) : curr;
#else
        // Без оптимизации вызов не превратится в переход, и стек рос бы на каждый
        // заголовок и фрейм, поэтому следующее состояние запускает цикл в run().
        (void)hook;
        (void)end;
        (void)w;
        return curr;
#endif
    }

    STOMPTALK_FORCE_INLINE
    void method_done(hook_type& hook, pointer at, std::size_t len) noexcept
    {
        raw_headers_ = ((len == 7) && (std::memcmp(at, "CONNECT", 7) == 0)) ||
            ((len == 9) && (std::memcmp(at, "CONNECTED", 9) == 0));
        hook.on_method(at, len);
    }

public:
    parser() = default;

    std::size_t run(hook_type& hook,
        const char *ptr, std::size_t len) noexcept;

};

} // namespace stomptalk

#include "stomptalk/parser_impl.hpp"
