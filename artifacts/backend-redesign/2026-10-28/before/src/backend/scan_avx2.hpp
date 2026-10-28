#pragma once

#include "../scan.hpp"
#include <immintrin.h>

namespace stomptalk { namespace detail {

template<>
struct header_scanner<STOMPTALK_BACKEND_AVX2> {
    template<bool Key>
    __attribute__((target("avx2"))) STOMPTALK_FORCE_INLINE
    static const char *scan(const char *p, const char *end, bool literal) noexcept {
        while (end - p >= 32) {
            const auto v = _mm256_loadu_si256(reinterpret_cast<const __m256i *>(p));
            auto events = _mm256_or_si256(_mm256_cmpeq_epi8(v, _mm256_setzero_si256()),
                _mm256_or_si256(_mm256_cmpeq_epi8(v, _mm256_set1_epi8('\n')),
                                 _mm256_cmpeq_epi8(v, _mm256_set1_epi8('\r'))));
            if (Key || !literal)
                events = _mm256_or_si256(events, _mm256_cmpeq_epi8(v, _mm256_set1_epi8(':')));
            if (!literal)
                events = _mm256_or_si256(events, _mm256_cmpeq_epi8(v, _mm256_set1_epi8('\\')));
            const auto mask = static_cast<unsigned>(_mm256_movemask_epi8(events));
            if (mask) return p + __builtin_ctz(mask);
            p += 32;
        }
        return scan_header<STOMPTALK_BACKEND_SSE2, Key>(p, end, literal);
    }
};

} }
