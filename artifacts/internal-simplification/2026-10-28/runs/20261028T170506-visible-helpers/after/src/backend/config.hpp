#pragma once

#if defined(__SSE2__) && !defined(STOMPTALK_DISABLE_SSE2)
#define STOMPTALK_SSE2 1
#else
#define STOMPTALK_SSE2 0
#endif

// AVX2 uses the SSE2 tail. Disabling SSE2 disables both SIMD implementations.
#if STOMPTALK_SSE2 && (defined(__i386__) || defined(__x86_64__)) && \
    (defined(__GNUC__) || defined(__clang__)) && !defined(STOMPTALK_DISABLE_AVX2)
#define STOMPTALK_AVX2 1
#else
#define STOMPTALK_AVX2 0
#endif

#if STOMPTALK_AVX2 && !defined(STOMPTALK_DISABLE_AVX2_PARSER)
#define STOMPTALK_PARSER_AVX2 1
#else
#define STOMPTALK_PARSER_AVX2 0
#endif

#if STOMPTALK_AVX2 && !defined(STOMPTALK_DISABLE_AVX2_NAMES)
#define STOMPTALK_NAMES_AVX2 1
#else
#define STOMPTALK_NAMES_AVX2 0
#endif
