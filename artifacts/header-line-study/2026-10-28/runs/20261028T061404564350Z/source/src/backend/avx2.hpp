#pragma once

#include "sse2.hpp"

#if STOMPTALK_AVX2
#include <immintrin.h>

// Include in an AVX2 target context. CPU/OS support is checked once at init.
namespace stomptalk {
namespace detail {
namespace backend {

struct avx2 : sse2
{
    STOMPTALK_FORCE_INLINE
    static __m256i load(const char* data) noexcept
    {
        return _mm256_loadu_si256(reinterpret_cast<const __m256i*>(data));
    }

    STOMPTALK_FORCE_INLINE
    static unsigned mask(__m256i matches) noexcept
    {
        return static_cast<unsigned>(_mm256_movemask_epi8(matches));
    }

    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text, std::size_t size) noexcept
    {
        while (size >= 32)
        {
            if (mask(_mm256_cmpeq_epi8(load(data), load(text))) != UINT32_MAX)
                return false;
            data += 32;
            text += 32;
            size -= 32;
        }
        return sse2::equal(data, text, size);
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static typename std::enable_if<(Size < 32), bool>::type
    equal(const char* data, const char* text) noexcept
    {
        return sse2::equal<Size>(data, text);
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static typename std::enable_if<(Size >= 32), bool>::type
    equal(const char* data, const char* text) noexcept
    {
        return mask(_mm256_cmpeq_epi8(load(data), load(text))) == UINT32_MAX &&
            equal<Size - 32>(data + 32, text + 32);
    }

    // The 16-byte content-length wire check is inherited from SSE2.
    STOMPTALK_FORCE_INLINE
    static const char* scan_header(const char* p, const char* end, bool key, bool literal) noexcept
    {
        while (end - p >= 32)
        {
            const auto word = load(p);
            auto events = _mm256_or_si256(_mm256_cmpeq_epi8(word, _mm256_setzero_si256()),
                _mm256_or_si256(_mm256_cmpeq_epi8(word, _mm256_set1_epi8('\n')),
                                _mm256_cmpeq_epi8(word, _mm256_set1_epi8('\r'))));
            if (key || !literal)
                events = _mm256_or_si256(events, _mm256_cmpeq_epi8(word, _mm256_set1_epi8(':')));
            if (!literal)
                events = _mm256_or_si256(events, _mm256_cmpeq_epi8(word, _mm256_set1_epi8('\\')));
            const auto found = mask(events);
            if (found)
                return p + __builtin_ctz(found);
            p += 32;
        }
        return sse2::scan_header(p, end, key, literal);
    }

    STOMPTALK_FORCE_INLINE
    static header_line scan_header_line(const char* p, const char* end, bool key, bool literal) noexcept
    {
        const char* separator = nullptr;
        while (end - p >= 32)
        {
            const auto word = load(p);
            auto colons = mask(_mm256_cmpeq_epi8(word, _mm256_set1_epi8(':')));
            auto events = _mm256_or_si256(_mm256_cmpeq_epi8(word, _mm256_setzero_si256()),
                _mm256_or_si256(_mm256_cmpeq_epi8(word, _mm256_set1_epi8('\n')),
                                 _mm256_cmpeq_epi8(word, _mm256_set1_epi8('\r'))));
            if (!literal)
                events = _mm256_or_si256(events, _mm256_cmpeq_epi8(word, _mm256_set1_epi8('\\')));
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
            p += 32;
        }
        const auto tail = sse2::scan_header_line(p, end, key, literal);
        return {separator ? separator : tail.separator, tail.stop};
    }
};

template<> struct engine<STOMPTALK_BACKEND_AVX2> : avx2 {};

} // namespace backend
} // namespace detail
} // namespace stomptalk
#endif
