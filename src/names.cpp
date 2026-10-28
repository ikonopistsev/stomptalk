#include "name_dispatch.hpp"
#include "backend/sse2.hpp"
#include "headers.hpp"

namespace stomptalk {
namespace detail {

uint32_t name_available_backends() noexcept
{
    uint32_t available = STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SWAR);
#if STOMPTALK_SSE2
    const auto features = stomptalk_cpu_features();
    if (features & STOMPTALK_CPU_SSE2)
        available |= STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SSE2);
#if STOMPTALK_NAMES_AVX2
    if (features & STOMPTALK_CPU_AVX2)
        available |= STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_AVX2);
#endif
#endif
    return available;
}

header_detector select_header_detector() noexcept
{
    const auto available = name_available_backends();
    (void)available;
#if STOMPTALK_NAMES_AVX2
    if (available & STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_AVX2))
        return detect_header_avx2;
#endif
#if STOMPTALK_SSE2
    if (available & STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SSE2))
        return detect_header<backend::sse2>;
#endif
    return detect_header<backend::swar>;
}

} // namespace detail
} // namespace stomptalk

stomptalk_header_id stomptalk_detect_header(stomptalk_view name)
{
    // Resolve CPU/OS/build availability once, outside candidate comparisons.
    static const auto detect = stomptalk::detail::select_header_detector();
    return detect(name);
}
