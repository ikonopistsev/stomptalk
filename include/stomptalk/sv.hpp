#pragma once

#include <string_view>

namespace stomptalk {

template <std::size_t N>
constexpr auto sv(const char (&text)[N]) noexcept
{
    return std::string_view(text, N - 1);
}

} // namespace stomptalk

