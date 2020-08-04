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
typedef base<std::string_view, std::string_view> incoming;

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

static constexpr auto make(std::string_view key, std::string_view val) noexcept
{
    return fixed(key, val);
}

template<class T>
class basic
    : public fixed
{
public:
    constexpr static auto num_id = T::num;

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

typedef basic<header::tag::content_type> content_type;
typedef basic<header::tag::content_length> content_length;
typedef basic<header::tag::heart_beat> heart_beat;
typedef basic<header::tag::accept_version> accept_version;
typedef basic<header::tag::version> version;
typedef basic<header::tag::server> server;
typedef basic<header::tag::host> host;
typedef basic<header::tag::login> login;
typedef basic<header::tag::passcode> passcode;
typedef basic<header::tag::destination> destination;
typedef basic<header::tag::message_id> message_id;
typedef basic<header::tag::subscription> subscription;
typedef basic<header::tag::ack> ack;
typedef basic<header::tag::id> id;
typedef basic<header::tag::receipt> receipt;
typedef basic<header::tag::receipt_id> receipt_id;
typedef basic<header::tag::session> session;
typedef basic<tag::prefetch_count> prefetch_count;
typedef basic<tag::durable> durable;
typedef basic<tag::auto_delete> auto_delete;
typedef basic<tag::persistent> persistent;
typedef basic<tag::message_ttl> message_ttl;
typedef basic<tag::reply_to> reply_to;
typedef basic<tag::expires> expires;
typedef basic<tag::max_length> max_length;
typedef basic<tag::max_length_bytes> max_length_bytes;
typedef basic<tag::max_priority> max_priority;
typedef basic<tag::dead_letter_exchange> dead_letter_exchange;
typedef basic<tag::dead_letter_routing_key> dead_letter_routing_key;
typedef basic<tag::redelivered> redelivered;
typedef basic<tag::original_exchange> original_exchange;
typedef basic<tag::original_routing_key> original_routing_key;


constexpr static durable durable_on() noexcept {
    return durable(tag::enable());
}

constexpr static durable durable_off() noexcept {
    return durable(tag::disable());
}

constexpr static auto_delete auto_delete_on() noexcept {
    return auto_delete(tag::enable());
}

constexpr static auto_delete auto_delete_off() noexcept {
    return auto_delete(tag::disable());
}

constexpr static persistent persistent_on() noexcept {
    return persistent(tag::enable());
}

static constexpr auto ver12() noexcept {
    return accept_version(tag::accept_version::v12());
}

static constexpr auto ask_client_individual() noexcept {
    return ack(tag::ack::client_individual());
}

static constexpr auto ask_client() noexcept {
    return ack(tag::ack::client());
}

static constexpr auto content_type_text_xml() noexcept {
    return content_type(tag::content_type::text_xml());
}
static constexpr auto content_type_text_html() noexcept {
    return content_type(tag::content_type::text_html());
}
static constexpr auto content_type_text_plain() noexcept {
    return content_type(tag::content_type::text_plain());
}
static constexpr auto content_type_xml() noexcept {
    return content_type(tag::content_type::xml());
}
static constexpr auto content_type_json() noexcept {
    return content_type(tag::content_type::json());
}
static constexpr auto content_type_octet() noexcept {
    return content_type(tag::content_type::octet());
}

} // namespace header
} // namespace stomptalk

template <class K, class V>
bool operator< (const stomptalk::header::base<K, V>& hdr1,
    stomptalk::header::base<K, V>& hdr2) noexcept
{
    return hdr1.key() < hdr2.key();
}

template <class K, class V1, class V2>
bool operator< (const stomptalk::header::base<K, V1>& hdr1,
    stomptalk::header::base<K, V2>& hdr2) noexcept
{
    return hdr1.key() < hdr2.key();
}

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
