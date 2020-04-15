#pragma once

#include "stomptalk/tag.hpp"
#include "stomptalk/memeq.hpp"
#include <functional>

namespace stomptalk {
namespace header {

class base
{
    strref key_{};
    strref val_{};

public:
    constexpr base() = default;

    template<std::size_t N>
    explicit constexpr base(const cref<N>& key) noexcept
        : key_(key)
    {   }

    base(const strref& key, const strref& val) noexcept
        : key_(key)
        , val_(val)
    {   }


    strref key() const noexcept
    {
        return key_;
    }

    strref value() const noexcept
    {
        return val_;
    }

    void set(strref val) noexcept
    {
        val_ = val;
    }
};

template<std::size_t S1, std::size_t S2>
static constexpr base make(cref<S1> key, cref<S2> val) noexcept
{
    return base(key, val);
}

static inline base make(strref key, strref val) noexcept
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
    explicit constexpr basic(const cref<N>& ref) noexcept
        : base(strref(T::name()), strref(ref))
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

template <std::size_t N>
constexpr const char* value_from(const cref<N>& c) noexcept
{
    return c.data();
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
