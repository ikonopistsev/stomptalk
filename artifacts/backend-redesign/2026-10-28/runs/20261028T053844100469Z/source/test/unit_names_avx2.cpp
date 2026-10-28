#include "../src/name_dispatch.hpp"
#include <utility>
#include <initializer_list>

#if STOMPTALK_NAMES_AVX2
#if defined(__clang__)
#pragma clang attribute push(__attribute__((target("avx2"))), apply_to = function)
#else
#pragma GCC push_options
#pragma GCC target("avx2")
#endif

#include "../src/backend/avx2.hpp"
#include "name_backend_checks.hpp"

std::size_t check_avx2_names()
{
    return check_name_backend<stomptalk::detail::backend::avx2>() +
        check_header_backend<STOMPTALK_BACKEND_AVX2>();
}

#if defined(__clang__)
#pragma clang attribute pop
#else
#pragma GCC pop_options
#endif
#else
std::size_t check_avx2_names()
{
    return 0;
}
#endif
