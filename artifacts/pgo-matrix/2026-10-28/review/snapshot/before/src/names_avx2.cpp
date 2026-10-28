#include "name_dispatch.hpp"

#if STOMPTALK_NAMES_AVX2
// Keep the baseline objects usable on CPUs without AVX2. No global -mavx2.
#if defined(__clang__)
#pragma clang attribute push(__attribute__((target("avx2"))), apply_to = function)
#else
#pragma GCC push_options
#pragma GCC target("avx2")
#endif

#include "backend/avx2.hpp"
#include "headers.hpp"

namespace stomptalk {
namespace detail {

stomptalk_header_id detect_header_avx2(stomptalk_view name) noexcept
{
    return detect_header<backend::avx2>(name);
}

} // namespace detail
} // namespace stomptalk

#if defined(__clang__)
#pragma clang attribute pop
#else
#pragma GCC pop_options
#endif
#endif
