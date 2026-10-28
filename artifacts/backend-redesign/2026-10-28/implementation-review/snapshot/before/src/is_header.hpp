#pragma once

#include "backend/swar.hpp"
#include <cassert>

namespace stomptalk {
namespace detail {

// Include this header and the selected SIMD backend in that backend's target context.
template<stomptalk_backend Backend = STOMPTALK_BACKEND_SWAR>
STOMPTALK_FORCE_INLINE
bool is_header(stomptalk_view name, stomptalk_view expected) noexcept
{
    assert(name.data || !name.size);
    assert(expected.data || !expected.size);
    return name.size == expected.size &&
        backend::comparison<Backend>::equal(name.data, expected.data, name.size);
}

} // namespace detail
} // namespace stomptalk
