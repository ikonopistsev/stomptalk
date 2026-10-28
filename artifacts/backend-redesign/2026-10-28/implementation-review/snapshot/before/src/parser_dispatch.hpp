#pragma once

#if defined(__SSE2__) && (defined(__i386__) || defined(__x86_64__)) && \
    (defined(__GNUC__) || defined(__clang__)) && !defined(STOMPTALK_DISABLE_AVX2_PARSER)
#define STOMPTALK_PARSER_AVX2 1
#else
#define STOMPTALK_PARSER_AVX2 0
#endif
