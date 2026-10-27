#pragma once
#include "stomptalk/parser.h"
#include <cstring>
#if defined(__SSE2__)
#include <emmintrin.h>
#endif

namespace stomptalk { namespace detail {
STOMPTALK_FORCE_INLINE bool header_event(unsigned char c, bool key, bool literal) noexcept {
    return c == 0 || c == '\n' || c == '\r' ||
           (c == ':' && (key || !literal)) || (c == '\\' && !literal);
}
STOMPTALK_FORCE_INLINE uint64_t has_zero(uint64_t x) noexcept {
    return (x - UINT64_C(0x0101010101010101)) & ~x & UINT64_C(0x8080808080808080);
}

// The backup's SIMD loop, with full-range prefix handling in the caller and
// length checks before every load. No assumptions about bytes past end.
template<stomptalk_backend B, bool Key>
STOMPTALK_FORCE_INLINE const char *scan_header(
    const char *p, const char *end, bool literal) noexcept {
#if defined(__SSE2__)
    if (B == STOMPTALK_BACKEND_SSE2) {
        while (end - p >= 16) {
            const __m128i v = _mm_loadu_si128(reinterpret_cast<const __m128i *>(p));
            __m128i events = _mm_or_si128(_mm_cmpeq_epi8(v, _mm_setzero_si128()),
                _mm_or_si128(_mm_cmpeq_epi8(v, _mm_set1_epi8('\n')),
                             _mm_cmpeq_epi8(v, _mm_set1_epi8('\r'))));
            if (Key || !literal)
                events = _mm_or_si128(events, _mm_cmpeq_epi8(v, _mm_set1_epi8(':')));
            if (!literal)
                events = _mm_or_si128(events, _mm_cmpeq_epi8(v, _mm_set1_epi8('\\')));
            const unsigned mask = static_cast<unsigned>(_mm_movemask_epi8(events));
            if (mask) return p + __builtin_ctz(mask);
            p += 16;
        }
    }
#endif
    if (B == STOMPTALK_BACKEND_SWAR) {
        while (end - p >= 8) {
            uint64_t v;
            std::memcpy(&v, p, 8);
            uint64_t events = has_zero(v) | has_zero(v ^ UINT64_C(0x0a0a0a0a0a0a0a0a)) |
                              has_zero(v ^ UINT64_C(0x0d0d0d0d0d0d0d0d));
            if (Key || !literal) events |= has_zero(v ^ UINT64_C(0x3a3a3a3a3a3a3a3a));
            if (!literal) events |= has_zero(v ^ UINT64_C(0x5c5c5c5c5c5c5c5c));
            if (events) {
#if defined(__BYTE_ORDER__) && __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
                // Borrow can mark bytes AFTER a real match. On little-endian,
                // the least significant marked byte is therefore always exact.
                return p + (__builtin_ctzll(events) >> 3);
#else
                break; // presence is portable; locate the exact byte below
#endif
            }
            p += 8;
        }
    }
    while (p < end && !header_event(static_cast<unsigned char>(*p), Key, literal)) ++p;
    return p;
}
// Compile-time backend selection; no indirect scanner call per header.
template<stomptalk_backend B>
struct header_scanner {
    template<bool Key>
    STOMPTALK_FORCE_INLINE static const char *scan(
        const char *p, const char *end, bool literal) noexcept {
        return scan_header<B, Key>(p, end, literal);
    }
};
} }
