#include "parser_dispatch.hpp"

#if STOMPTALK_PARSER_AVX2
#include "stomptalk/parser.hpp"
#include "methods.hpp"
#include "content_length.hpp"
#include "backend/scan_avx2.hpp"
#include <algorithm>
#include <cassert>

// Only the AVX2 state instantiations get this target. Shared helpers and the
// dispatcher retain the baseline ISA; no global -mavx2 or per-field dispatch.
namespace stomptalk {

#define STOMPTALK_STATE_TARGET __attribute__((target("avx2")))
#include "parser_states.hpp"
#undef STOMPTALK_STATE_TARGET

parser::state_type parser::avx2_state() noexcept {
    return &parser::start_state<STOMPTALK_BACKEND_AVX2>;
}
}
#endif
