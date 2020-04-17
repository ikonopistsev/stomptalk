#pragma once

#include "stomptalk/tag.hpp"
#include "stomptalk/memeq.hpp"
#include <string_view>

namespace stomptalk {
namespace header {

class base
{
    std::string_view key_{};
    std::string_view val_{};

public:
    constexpr base() = default;

    template<std::size_t N>
    explicit constexpr base(strref<N> key) noexcept
        : key_(key.view())
    {   }

    template<std::size_t S1, std::size_t S2>
    explicit constexpr base(strref<S1> key, strref<S2> val) noexcept
        : key_(key.view())
        , val_(val.view())
    {   }

    base(std::string_view key, std::string_view val) noexcept
        : key_(key)
        , val_(val)
    {   }


    std::string_view key() const noexcept
    {
        return key_;
    }

    std::string_view value() const noexcept
    {
        return val_;
    }

    void set(const std::string_view& val) noexcept
    {
        val_ = val;
    }
};

template<std::size_t S1, std::size_t S2>
static constexpr base make(strref<S1> key, strref<S2> val) noexcept
{
    return base(key, val);
}

static inline base make(std::string_view key, std::string_view val) noexcept
{
    return base(key, val);
}


template<class T>
class basic
    : public base
{
public:
    constexpr basic() noexcept
        : base(T::name())
    {   }

    template<std::size_t N>
    explicit constexpr basic(strref<N> ref) noexcept
        : base(T::name(), ref)
    {   }
};

template <class T>
constexpr std::size_t size_of(const basic<T>&) noexcept
{
    return size_of(T::name());
}

template <class T>
constexpr std::size_t id_of(const basic<T>&) noexcept
{
    return T::id;
}

typedef basic<tag::content_type> content_type;
typedef basic<tag::content_length> content_length;

} // namespace header
} // namespace stomptalk

template<class C, class T>
std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    const stomptalk::header::base& h)
{
    return os << h.key() << '=' << h.value();
}
