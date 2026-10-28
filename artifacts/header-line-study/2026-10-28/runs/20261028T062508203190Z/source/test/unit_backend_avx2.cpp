#include "../src/backend/config.hpp"
#include <utility>
#include <initializer_list>

#if STOMPTALK_PARSER_AVX2 || STOMPTALK_NAMES_AVX2
#if defined(__clang__)
#pragma clang attribute push(__attribute__((target("avx2"))), apply_to = function)
#else
#pragma GCC push_options
#pragma GCC target("avx2")
#endif

#include "../src/backend/avx2.hpp"
#include "name_backend_checks.hpp"
#include "scan_backend_checks.hpp"

std::size_t check_avx2_names()
{
    return check_name_backend<stomptalk::detail::backend::avx2>() +
        check_header_backend<STOMPTALK_BACKEND_AVX2>();
}

std::size_t check_avx2_scanner()
{
    return check_scanner_backend<stomptalk::detail::backend::avx2>();
}

#if defined(__clang__)
#pragma clang attribute pop
#else
#pragma GCC pop_options
#endif
#else
std::size_t check_avx2_names() { return 0; }
std::size_t check_avx2_scanner() { return 0; }
#endif
