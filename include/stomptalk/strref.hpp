#pragma once

#include "stomptalk/memeq.hpp"
#include <string>

namespace stomptalk {

template <std::size_t N>
class cref
{
    const char* ptr_;

public:
    constexpr cref(const cref&) = default;
    constexpr cref& operator=(const cref&) = default;

    constexpr explicit cref(const char (&text)[N]) noexcept
        : ptr_{text}
    {   }

    constexpr const char* data() const noexcept
    {
        return ptr_;
    }

    static constexpr std::size_t size() noexcept
    {
        return N - 1;
    }
};

template <std::size_t N>
constexpr auto mkref(const char (&text)[N]) noexcept
{
    return cref<N>(text);
}

template <std::size_t N>
static constexpr std::size_t size_of(const cref<N>&) noexcept
{
    return N - 1;
}

template <std::size_t N>
static constexpr bool equals(const cref<N>& ref, const char *text) noexcept
{
    return memeq<size_of(ref)>::cmp(ref.data(), text);
}

class strref
{
    const char* ptr_{ "" };
    std::size_t size_{ 0 };

public:
    constexpr strref() = default;
    constexpr strref(const strref&) = default;

    template<std::size_t N>
    explicit constexpr strref(const cref<N>& text) noexcept
        : ptr_(text.data())
        , size_(text.size())
    {   }

    constexpr strref(const char *data, std::size_t size) noexcept
        : ptr_(data)
        , size_(size)
    {   }

    constexpr const char* data() const noexcept
    {
        return ptr_;
    }

    constexpr std::size_t size() const noexcept
    {
        return size_;
    }

    constexpr bool empty() const noexcept
    {
        return 0 == size();
    }

    void print(std::string& out) const;
};

} // namespace stomptalk

#include <ostream>

template<class C, class T>
std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    const stomptalk::strref& ref)
{
    return os.write(ref.data(), ref.size());
}

template<class C, class T, std::size_t N>
constexpr std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    const stomptalk::cref<N>& ref)
{
    return os.write(ref.data(), N - 1);
}
