#pragma once

#include "stomptalk/parser.h"

#include "backend/config.hpp"

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
