#pragma once

#include "config.hpp"
#include "stomptalk/parser.h"
#include "../content_length.hpp"
#include <cstring>

namespace stomptalk {
namespace detail {
namespace backend {

template<stomptalk_backend Backend>
struct engine;

struct scalar
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
        // One comparison of the entire known length; the compiler selects loads.
        return Size == 0 || std::memcmp(data, text, Size) == 0;
    }

    STOMPTALK_FORCE_INLINE
    static bool is_content_length(const char* data) noexcept
    {
        return equal<sizeof(content_length) - 1>(data, content_length);
    }

    STOMPTALK_FORCE_INLINE
    static const char* scan_header(const char* p, const char* end, bool key, bool literal) noexcept
    {
        while (p < end)
        {
            const auto c = static_cast<unsigned char>(*p);
            if (c == 0 || c == '\n' || c == '\r' ||
                (c == ':' && (key || !literal)) || (c == '\\' && !literal))
                break;
            ++p;
        }
        return p;
    }
};

struct swar : scalar
{
    STOMPTALK_FORCE_INLINE
    static uint64_t load(const char* data) noexcept
    {
        uint64_t word;
        std::memcpy(&word, data, sizeof(word));
        return word;
    }

    STOMPTALK_FORCE_INLINE
    static uint64_t zero_mask(uint64_t word) noexcept
    {
        // Presence / first match only: borrow may mark later bytes too.
        // Equality uses memcmp, not this approximate mask.
        return (word - UINT64_C(0x0101010101010101)) & ~word & UINT64_C(0x8080808080808080);
    }

    STOMPTALK_FORCE_INLINE
    static const char* scan_header(const char* p, const char* end, bool key, bool literal) noexcept
    {
        while (end - p >= 8)
        {
            const auto word = load(p);
            auto events = zero_mask(word) | zero_mask(word ^ UINT64_C(0x0a0a0a0a0a0a0a0a)) |
                zero_mask(word ^ UINT64_C(0x0d0d0d0d0d0d0d0d));
            if (key || !literal)
                events |= zero_mask(word ^ UINT64_C(0x3a3a3a3a3a3a3a3a));
            if (!literal)
                events |= zero_mask(word ^ UINT64_C(0x5c5c5c5c5c5c5c5c));
            if (events)
            {
#if defined(__BYTE_ORDER__) && __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
                return p + (__builtin_ctzll(events) >> 3);
#else
                break; // locate the first byte in memory order below
#endif
            }
            p += 8;
        }
        return scalar::scan_header(p, end, key, literal);
    }
};

template<> struct engine<STOMPTALK_BACKEND_SCALAR> : scalar {};
template<> struct engine<STOMPTALK_BACKEND_SWAR> : swar {};

} // namespace backend
} // namespace detail
} // namespace stomptalk
