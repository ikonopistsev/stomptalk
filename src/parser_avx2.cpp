#include "backend/config.hpp"

#if STOMPTALK_PARSER_AVX2
#include "stomptalk/parser.hpp"
#include <algorithm>
#include <cassert>

#if defined(__clang__)
#pragma clang attribute push(__attribute__((target("avx2"))), apply_to = function)
#else
#pragma GCC push_options
#pragma GCC target("avx2")
#endif

#include "backend/avx2.hpp"
#include "methods.hpp"
#include "is_header.hpp"

namespace stomptalk {

#include "parser_states.hpp"

#if defined(__clang__)
#pragma clang attribute pop
#else
#pragma GCC pop_options
#endif

parser::state_type parser::avx2_state() noexcept {
    return &parser::start_state<STOMPTALK_BACKEND_AVX2>;
}
}
#endif
