#pragma once

#include "backend/sse2.hpp"
#include <cassert>

namespace stomptalk {
namespace detail {

template<class Backend = backend::swar>
struct is_header
{
    template<std::size_t Size>
    STOMPTALK_FORCE_INLINE
    bool operator()(stomptalk_view name, const char (&text)[Size]) const noexcept
    {
        assert(name.data || !name.size);
        return name.size == Size - 1 && Backend::template equal<Size - 1>(name.data, text);
    }

    STOMPTALK_FORCE_INLINE
    bool operator()(stomptalk_view name, stomptalk_view expected) const noexcept
    {
        assert(name.data || !name.size);
        assert(expected.data || !expected.size);
        return name.size == expected.size && Backend::equal(name.data, expected.data, name.size);
    }
};

// wire, when non-null, points to 16 readable bytes: LF + name + colon.
// Fragmented/decoded names use the plain 14-byte comparison.
template<stomptalk_backend Backend>
STOMPTALK_FORCE_INLINE
bool is_content_length(stomptalk_view name, const char* wire = nullptr) noexcept
{
    assert(name.data && name.size == sizeof(backend::content_length_wire) - 3);
    return wire ? backend::engine<Backend>::is_content_length_wire(wire)
                : backend::swar::is_content_length(name.data);
}

} // namespace detail
} // namespace stomptalk
