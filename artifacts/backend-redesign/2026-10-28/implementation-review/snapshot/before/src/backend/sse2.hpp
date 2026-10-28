#pragma once

#include "swar.hpp"

#if defined(__SSE2__)
#include <emmintrin.h>

namespace stomptalk {
namespace detail {
namespace backend {

struct sse2
{
    STOMPTALK_FORCE_INLINE
    static __m128i ends8(const char* data, std::size_t size) noexcept
    {
        const auto first = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(data));
        const auto last = _mm_loadl_epi64(reinterpret_cast<const __m128i*>(data + size - 8));
        return _mm_unpacklo_epi64(first, last);
    }

    // text contains the first/last eight bytes, packed in an aligned XMM word.
    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static bool equal_ends8(const char* data, const char* text) noexcept
    {
        static_assert(Size >= 8 && Size <= 16, "Two overlapping eight-byte words");
        const auto expected = _mm_load_si128(reinterpret_cast<const __m128i*>(text));
        return _mm_movemask_epi8(_mm_cmpeq_epi8(ends8(data, Size), expected)) == 0xffff;
    }

    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text, std::size_t size) noexcept
    {
        while (size >= 16)
        {
            const auto matches = _mm_cmpeq_epi8(
                _mm_loadu_si128(reinterpret_cast<const __m128i*>(data)),
                _mm_loadu_si128(reinterpret_cast<const __m128i*>(text)));
            if (_mm_movemask_epi8(matches) != 0xffff)
                return false;
            data += 16;
            text += 16;
            size -= 16;
        }
        if (size > 8)
            return _mm_movemask_epi8(_mm_cmpeq_epi8(ends8(data, size), ends8(text, size))) == 0xffff;
        return swar::equal(data, text, size);
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text) noexcept
    {
        if (Size <= 8)
            return swar::equal<Size>(data, text);

        if (Size < 16)
        {
            // Both eight-byte loads stay inside the name, including a name
            // ending at a guard page. Overlap does not change equality.
            const auto matches = _mm_cmpeq_epi8(ends8(data, Size), ends8(text, Size));
            return _mm_movemask_epi8(matches) == 0xffff;
        }

        const auto first = _mm_cmpeq_epi8(
            _mm_loadu_si128(reinterpret_cast<const __m128i*>(data)),
            _mm_loadu_si128(reinterpret_cast<const __m128i*>(text)));

        if (Size == 16)
            return _mm_movemask_epi8(first) == 0xffff;

        if (Size <= 32)
        {
            const auto last = _mm_cmpeq_epi8(
                _mm_loadu_si128(reinterpret_cast<const __m128i*>(data + Size - 16)),
                _mm_loadu_si128(reinterpret_cast<const __m128i*>(text + Size - 16)));
            return _mm_movemask_epi8(_mm_and_si128(first, last)) == 0xffff;
        }

        return _mm_movemask_epi8(first) == 0xffff &&
            swar::equal<Size - (Size >= 16 ? 16 : 0)>(data + 16, text + 16);
    }
};

template<> struct comparison<STOMPTALK_BACKEND_SSE2> : sse2 {};

} // namespace backend
} // namespace detail
} // namespace stomptalk
#endif
