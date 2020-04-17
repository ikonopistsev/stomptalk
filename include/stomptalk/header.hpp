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

    constexpr explicit base(std::string_view key) noexcept
        : key_(key)
    {   }

    constexpr base(std::string_view key, std::string_view val) noexcept
        : key_(key)
        , val_(val)
    {   }

    constexpr std::string_view key() const noexcept
    {
        return key_;
    }

    constexpr std::string_view value() const noexcept
    {
        return val_;
    }

    constexpr void set(std::string_view val) noexcept
    {
        val_ = val;
    }
};

constexpr static inline base make(std::string_view key,
                                  std::string_view val) noexcept
{
    return base(key, val);
}


template<class T>
class basic
    : public base
{
public:
    constexpr explicit basic() noexcept
        : base(T::name())
    {   }

    explicit constexpr basic(std::string_view val) noexcept
        : base(T::name(), val)
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
