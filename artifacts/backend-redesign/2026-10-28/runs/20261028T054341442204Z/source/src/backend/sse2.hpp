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
    static bool is_content_length(const char* data) noexcept
    {
        // Exactly 14 input bytes: two overlapping 8-byte loads, never load16(data).
        constexpr auto size = sizeof(content_length) - 1;
        const auto first = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(data));
        const auto last = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(data + size - 8));
        const auto expected = _mm_load_si128(reinterpret_cast<const __m128i*>(content_length_sse2));
        return mask(_mm_cmpeq_epi8(_mm_unpacklo_epi64(first, last), expected)) == 0xffff;
    }

    STOMPTALK_FORCE_INLINE
    static const char* scan_header(const char* p, const char* end, bool key, bool literal) noexcept
    {
        while (end - p >= 16)
        {
            const auto word = load(p);
            auto events = _mm_or_si128(_mm_cmpeq_epi8(word, _mm_setzero_si128()),
                _mm_or_si128(_mm_cmpeq_epi8(word, _mm_set1_epi8('\n')),
                             _mm_cmpeq_epi8(word, _mm_set1_epi8('\r'))));
            if (key || !literal)
                events = _mm_or_si128(events, _mm_cmpeq_epi8(word, _mm_set1_epi8(':')));
            if (!literal)
                events = _mm_or_si128(events, _mm_cmpeq_epi8(word, _mm_set1_epi8('\\')));
            const auto found = mask(events);
            if (found)
                return p + __builtin_ctz(found);
            p += 16;
        }
        return swar::scan_header(p, end, key, literal);
    }
};

template<> struct engine<STOMPTALK_BACKEND_SSE2> : sse2 {};

} // namespace backend
} // namespace detail
} // namespace stomptalk
#endif
