#pragma once

#include "stomptalk/basic_text.hpp"

namespace stomptalk {

template<class C, std::size_t N>
static inline auto sv(const basic_text<C, N>& text) noexcept
{
    return std::basic_string_view<C>(text.data(), text.size());
}

template <class C, class T, class A>
constexpr auto sv(const std::basic_string<C, T, A>& text) noexcept
{
    return std::basic_string_view<C>(text.data(), text.size());
}

} // namespace stomptalk

