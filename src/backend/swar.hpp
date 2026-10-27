#pragma once

#include "stomptalk/parser.h"
#include <cstring>

namespace stomptalk {
namespace detail {
namespace backend {

template<stomptalk_backend Backend>
struct comparison;

struct swar
{
    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text, std::size_t size) noexcept
    {
        return size == 0 || std::memcmp(data, text, size) == 0;
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text) noexcept
    {
        // A constant size lets the compiler use word loads without unaligned
        // typed dereferences or a hand-written byte comparison loop.
        return Size == 0 || std::memcmp(data, text, Size) == 0;
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static bool equal_ends8(const char* data, const char* text) noexcept
    {
        static_assert(Size >= 8 && Size <= 16, "Two overlapping eight-byte words");
        return equal<8>(data, text) && equal<8>(data + Size - 8, text + 8);
    }
};

template<> struct comparison<STOMPTALK_BACKEND_SCALAR> : swar {};
template<> struct comparison<STOMPTALK_BACKEND_SWAR> : swar {};

} // namespace backend
} // namespace detail
} // namespace stomptalk
