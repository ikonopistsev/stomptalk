#pragma once

#include "sse2.hpp"
#include <immintrin.h>

// Include/instantiate in an AVX2 compilation context. The dispatcher checks
// both CPU/OS availability and whether that implementation was compiled.
namespace stomptalk {
namespace detail {
namespace backend {

struct avx2
{
    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static bool equal_ends8(const char* data, const char* text) noexcept
    {
        // Short names use VEX-encoded XMM operations in this AVX2 context.
        return sse2::equal_ends8<Size>(data, text);
    }

    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text, std::size_t size) noexcept
    {
        while (size >= 32)
        {
            const auto matches = _mm256_cmpeq_epi8(
                _mm256_loadu_si256(reinterpret_cast<const __m256i*>(data)),
                _mm256_loadu_si256(reinterpret_cast<const __m256i*>(text)));
            if (_mm256_movemask_epi8(matches) != -1)
                return false;
            data += 32;
            text += 32;
            size -= 32;
        }
        return sse2::equal(data, text, size);
    }

    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    static bool equal(const char* data, const char* text) noexcept
    {
        if (Size < 32)
            return sse2::equal<Size>(data, text);

        const auto first = _mm256_cmpeq_epi8(
            _mm256_loadu_si256(reinterpret_cast<const __m256i*>(data)),
            _mm256_loadu_si256(reinterpret_cast<const __m256i*>(text)));

        if (Size == 32)
            return _mm256_movemask_epi8(first) == -1;

        if (Size <= 64)
        {
            const auto last = _mm256_cmpeq_epi8(
                _mm256_loadu_si256(reinterpret_cast<const __m256i*>(data + Size - 32)),
                _mm256_loadu_si256(reinterpret_cast<const __m256i*>(text + Size - 32)));
            return _mm256_movemask_epi8(_mm256_and_si256(first, last)) == -1;
        }

        return _mm256_movemask_epi8(first) == -1 &&
            swar::equal<Size - (Size >= 32 ? 32 : 0)>(data + 32, text + 32);
    }
};

template<> struct comparison<STOMPTALK_BACKEND_AVX2> : avx2 {};

} // namespace backend
} // namespace detail
} // namespace stomptalk
