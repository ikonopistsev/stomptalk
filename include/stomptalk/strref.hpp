#pragma once

#include "stomptalk/memeq.hpp"
#include <string_view>

namespace stomptalk {

template <std::size_t N>
class strref
{
    const char* ptr_{""};

public:
    constexpr strref(const strref&) = default;
    constexpr strref& operator=(const strref&) = default;

    template<std::size_t L>
    constexpr explicit strref(const char (&text)[L]) noexcept
        : ptr_{text}
    {   }

    constexpr const char* data() const noexcept
    {
        return ptr_;
    }

    static constexpr std::size_t size() noexcept
    {
        return N;
    }

    constexpr operator std::string_view() const noexcept
    {
        return std::string_view(data(), size());
    }
};

template <std::size_t N>
constexpr auto make_ref(const char (&text)[N]) noexcept
{
    return strref<N - 1>(text);
}

template <std::size_t N>
constexpr auto make_view(const char (&text)[N]) noexcept
{
    return std::string_view(text, N - 1);
}

template <std::size_t N>
static constexpr std::size_t size_of(strref<N>) noexcept
{
    return N;
}

template <std::size_t N>
static constexpr bool equals(strref<N> ref, const char *text) noexcept
{
    return memeq<size_of(ref)>::cmp(ref.data(), text);
}

} // namespace stomptalk

#include <ostream>

template<class C, class T, std::size_t N>
constexpr std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    stomptalk::strref<N>ref)
{
    return os.write(ref.data(), N - 1);
}
