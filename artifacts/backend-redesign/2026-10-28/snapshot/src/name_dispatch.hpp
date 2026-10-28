#pragma once

#include "stomptalk/parser.h"

#if defined(__SSE2__) && (defined(__i386__) || defined(__x86_64__)) && \
    (defined(__GNUC__) || defined(__clang__)) && !defined(STOMPTALK_DISABLE_AVX2)
#define STOMPTALK_NAMES_AVX2 1
#else
#define STOMPTALK_NAMES_AVX2 0
#endif

namespace stomptalk {
namespace detail {

using header_detector = stomptalk_header_id (*)(stomptalk_view);

// Internal selection for the optional classifier, not parser scan backends.
uint32_t name_available_backends() noexcept;
header_detector select_header_detector(stomptalk_backend backend) noexcept;

#if STOMPTALK_NAMES_AVX2
stomptalk_header_id detect_header_avx2(stomptalk_view name) noexcept;
#endif

} // namespace detail
} // namespace stomptalk
