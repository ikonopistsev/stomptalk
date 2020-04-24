#pragma once

#include "stomptalk/tag.hpp"
#include "stomptalk/memeq.hpp"
#include <string_view>

namespace stomptalk {
namespace header {

template<class K, class V>
class base
{
    K key_{};
    K val_{};

public:
    base() = default;

    explicit base(K key) noexcept
        : key_(std::move(key))
    {   }

    base(K key, V val) noexcept
        : key_(std::move(key))
        , val_(std::move(val))
    {   }

    const K& key() const noexcept
    {
        return key_;
    }

    const V& value() const noexcept
    {
        return val_;
    }

    void set(V val) noexcept
    {
        val_ = std::move(val);
    }
};

typedef base<std::string, std::string> custom;

template<>
class base<std::string_view, std::string_view>
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

    constexpr operator bool() const noexcept
    {
        return !val_.empty();
    }
};

typedef base<std::string_view, std::string_view> fixed;

constexpr static inline base<std::string_view, std::string_view>
    make(std::string_view key, std::string_view val) noexcept
{
    return base<std::string_view, std::string_view>(key, val);
}

template<class T>
class basic
    : public fixed
{
public:
    constexpr explicit basic() noexcept
        : fixed(T::name())
    {   }

    explicit constexpr basic(std::string_view val) noexcept
        : fixed(T::name(), val)
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
typedef basic<tag::heart_beat> heart_beat;
typedef basic<tag::accept_version> accept_version;
typedef basic<tag::host> host;
typedef basic<tag::login> login;
typedef basic<tag::passcode> passcode;
typedef basic<tag::destination> destination;
typedef basic<tag::message_id> message_id;
typedef basic<tag::subscription> subscription;
typedef basic<tag::ack> ack;
typedef basic<tag::id> id;
typedef basic<tag::receipt> receipt;

constexpr static accept_version ver12() noexcept {
    return accept_version(tag::accept_version::v12());
}

constexpr static ack client_individual() noexcept {
    return ack(tag::ack::client_individual());
}

constexpr static ack client() noexcept {
    return ack(tag::ack::client());
}

} // namespace header
} // namespace stomptalk

template<class C, class T, class V>
std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    stomptalk::header::custom hdr)
{
    return os << hdr.key() << '=' << hdr.value();
}

template<class C, class T, class V>
constexpr std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    stomptalk::header::fixed hdr)
{
    return os << hdr.key() << '=' << hdr.value();
}
