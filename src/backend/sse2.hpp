#pragma once

#include "swar.hpp"

#if STOMPTALK_SSE2
#include <emmintrin.h>
#include <type_traits>

namespace stomptalk {
namespace detail {
namespace backend {

struct sse2 : swar
{
    STOMPTALK_FORCE_INLINE
    static __m128i load(const char* data) noexcept
    {
        return _mm_loadu_si128(reinterpret_cast<const __m128i*>(data));
    }

    STOMPTALK_FORCE_INLINE
    static unsigned mask(__m128i matches) noexcept
    {
        return static_cast<unsigned>(_mm_movemask_epi8(matches));
    }

    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text, std::size_t size) noexcept
    {
        while (size >= 16)
        {
            if (mask(_mm_cmpeq_epi8(load(data), load(text))) != 0xffff)
                return false;
            data += 16;
            text += 16;
            size -= 16;
        }
        return swar::equal(data, text, size);
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static typename std::enable_if<(Size < 16), bool>::type
    equal(const char* data, const char* text) noexcept
    {
        return swar::equal<Size>(data, text);
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static typename std::enable_if<(Size >= 16), bool>::type
    equal(const char* data, const char* text) noexcept
    {
        return mask(_mm_cmpeq_epi8(load(data), load(text))) == 0xffff &&
            equal<Size - 16>(data + 16, text + 16);
    }

    STOMPTALK_FORCE_INLINE
    static bool is_content_length_wire(const char* data) noexcept
    {
        const auto expected = _mm_load_si128(reinterpret_cast<const __m128i*>(content_length_wire));
        return mask(_mm_cmpeq_epi8(load(data), expected)) == 0xffff;
    }

    STOMPTALK_FORCE_INLINE
    static header_line scan_header_line(const char* p, const char* end, bool key, bool literal) noexcept
    {
        const char* separator = nullptr;
        while (end - p >= 16)
        {
            const auto word = load(p);
            auto colons = mask(_mm_cmpeq_epi8(word, _mm_set1_epi8(':')));
            auto events = _mm_or_si128(_mm_cmpeq_epi8(word, _mm_setzero_si128()),
                _mm_or_si128(_mm_cmpeq_epi8(word, _mm_set1_epi8('\n')),
                                 _mm_cmpeq_epi8(word, _mm_set1_epi8('\r'))));
            if (!literal)
                events = _mm_or_si128(events, _mm_cmpeq_epi8(word, _mm_set1_epi8('\\')));
            auto stops = mask(events);
            if (key && colons && (!stops || __builtin_ctz(colons) < __builtin_ctz(stops)))
            {
                separator = p + __builtin_ctz(colons);
                key = false;
                colons &= colons - 1;
            }
            if (!literal)
                stops |= colons;
            if (stops)
                return {separator, p + __builtin_ctz(stops)};
            p += 16;
        }
        const auto tail = swar::scan_header_line(p, end, key, literal);
        return {separator ? separator : tail.separator, tail.stop};
    }
};

template<> struct engine<STOMPTALK_BACKEND_SSE2> : sse2 {};

} // namespace backend
} // namespace detail
} // namespace stomptalk
#endif
