#pragma once

#include "stomptalk/tag.hpp"
#include <string>

namespace stomptalk {
namespace header {

template<class K, class V>
class base
{
    K key_{};
    V val_{};

public:
    constexpr base() = default;

    constexpr explicit base(K key) noexcept
        : key_(std::move(key))
    {   }

    base(K key, V val) noexcept
        : key_(std::move(key))
        , val_(std::move(val))
    {   }

    constexpr const K& key() const noexcept
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

template<class K, class V>
class base_ref
{
    K key_{};
    V val_{};

public:
    constexpr base_ref() = default;

    constexpr explicit base_ref(K key) noexcept
        : key_(std::move(key))
    {   }

    constexpr base_ref(K key, V val) noexcept
        : key_(std::move(key))
        , val_(std::move(val))
    {   }

    constexpr const K& key() const noexcept
    {
        return key_;
    }

    constexpr const V& value() const noexcept
    {
        return val_;
    }

    void set(V val) noexcept
    {
        val_ = std::move(val);
    }
};

template<class T, class V>
class known
    : public base<decltype (T::text), V>
{
    using super = base<decltype (T::text), V>;
public:
    static constexpr auto num = T::num;
    static constexpr auto mask = T::mask;

    constexpr known() noexcept
        : super(T::text)
    {   }

    constexpr explicit known(V val) noexcept
        : super(T::text, std::move(val))
    {   }
};

template<class T, class V>
class known_ref
    : public base_ref<decltype (T::text), V>
{
    using super = base_ref<decltype (T::text), V>;
public:
    static constexpr auto num = T::num;
    static constexpr auto mask = T::mask;

    constexpr known_ref()
        : super(T::text)
    {   }

    constexpr explicit known_ref(V val) noexcept
        : super(T::text, std::move(val))
    {   }
};

constexpr static inline auto content_length(std::string_view val) noexcept
{
    return known<tag::content_length, std::string_view>(val);
}

static inline auto content_length(std::size_t size) noexcept
{
    return known<tag::content_length, std::string>(std::to_string(size));
}

constexpr static inline auto content_type(std::string_view val) noexcept
{
    return known<tag::content_type, std::string_view>(val);
}

constexpr static inline auto accept_version(std::string_view val) noexcept
{
    return known<tag::accept_version, std::string_view>(val);
}

constexpr static inline auto host(std::string_view val) noexcept
{
    return known<tag::host, std::string_view>(val);
}

constexpr static inline auto version(std::string_view val) noexcept
{
    return known<tag::version, std::string_view>(val);
}

constexpr static inline auto destination(std::string_view val) noexcept
{
    return known<tag::destination, std::string_view>(val);
}

constexpr static inline auto id(std::string_view val) noexcept
{
    return known<tag::id, std::string_view>(val);
}

constexpr static inline auto transaction(std::string_view val) noexcept
{
    return known<tag::transaction, std::string_view>(val);
}

//// The Stomp message id (not amqp_message_id)
constexpr static inline auto message_id(std::string_view val) noexcept
{
    return known<tag::message_id, std::string_view>(val);
}

constexpr static inline auto subscription(std::string_view val) noexcept
{
    return known<tag::subscription, std::string_view>(val);
}

constexpr static inline auto receipt_id(std::string_view val) noexcept
{
    return known<tag::receipt_id, std::string_view>(val);
}

constexpr static inline auto login(std::string_view val) noexcept
{
    return known<tag::login, std::string_view>(val);
}

constexpr static inline auto passcode(std::string_view val) noexcept
{
    return known<tag::passcode, std::string_view>(val);
}

constexpr static inline auto heart_beat(std::string_view val) noexcept
{
    return known<tag::heart_beat, std::string_view>(val);
}

constexpr static inline auto session(std::string_view val) noexcept
{
    return known<tag::session, std::string_view>(val);
}

constexpr static inline auto server(std::string_view val) noexcept
{
    return known<tag::server, std::string_view>(val);
}

constexpr static inline auto ack(std::string_view val) noexcept
{
    return known<tag::ack, std::string_view>(val);
}

constexpr static inline auto receipt(std::string_view val) noexcept
{
    return known<tag::receipt, std::string_view>(val);
}

//// The ERROR frame SHOULD contain a message header with a short description of the error
//typedef basic<tag::message> message;
constexpr static inline auto message(std::string_view val) noexcept
{
    return known<tag::message, std::string_view>(val);
}
//typedef basic<tag::prefetch_count> prefetch_count;
constexpr static inline auto prefetch_count(std::string_view val) noexcept
{
    return known<tag::prefetch_count, std::string_view>(val);
}
//typedef basic<tag::durable> durable;
constexpr static inline auto durable(std::string_view val) noexcept
{
    return known<tag::durable, std::string_view>(val);
}
//typedef basic<tag::auto_delete> auto_delete;
constexpr static inline auto auto_delete(std::string_view val) noexcept
{
    return known<tag::auto_delete, std::string_view>(val);
}

//typedef basic<tag::message_ttl> message_ttl;
constexpr static inline auto message_ttl(std::string_view val) noexcept
{
    return known<tag::message_ttl, std::string_view>(val);
}

//typedef basic<tag::expires> expires;
constexpr static inline auto expires(std::string_view val) noexcept
{
    return known<tag::expires, std::string_view>(val);
}

//typedef basic<tag::max_length> max_length;
constexpr static inline auto max_length(std::string_view val) noexcept
{
    return known<tag::max_length, std::string_view>(val);
}

//typedef basic<tag::max_length_bytes> max_length_bytes;
constexpr static inline auto max_length_bytes(std::string_view val) noexcept
{
    return known<tag::max_length_bytes, std::string_view>(val);
}

//typedef basic<tag::dead_letter_exchange> dead_letter_exchange;
constexpr static inline auto dead_letter_exchange(std::string_view val) noexcept
{
    return known<tag::dead_letter_exchange, std::string_view>(val);
}

//typedef basic<tag::dead_letter_routing_key> dead_letter_routing_key;
constexpr static inline auto dead_letter_routing_key(std::string_view val) noexcept
{
    return known<tag::dead_letter_routing_key, std::string_view>(val);
}

//typedef basic<tag::max_priority> max_priority;
constexpr static inline auto max_priority(std::string_view val) noexcept
{
    return known<tag::max_priority, std::string_view>(val);
}

//typedef basic<tag::persistent> persistent;
constexpr static inline auto persistent(std::string_view val) noexcept
{
    return known<tag::persistent, std::string_view>(val);
}

//typedef basic<tag::reply_to> reply_to;
constexpr static inline auto reply_to(std::string_view val) noexcept
{
    return known<tag::reply_to, std::string_view>(val);
}

//typedef basic<tag::redelivered> redelivered;
constexpr static inline auto redelivered(std::string_view val) noexcept
{
    return known<tag::redelivered, std::string_view>(val);
}

//typedef basic<tag::original_exchange> original_exchange;
constexpr static inline auto original_exchange(std::string_view val) noexcept
{
    return known<tag::original_exchange, std::string_view>(val);
}

//typedef basic<tag::original_routing_key> original_routing_key;
constexpr static inline auto original_routing_key(std::string_view val) noexcept
{
    return known<tag::original_routing_key, std::string_view>(val);
}

//typedef basic<tag::queue_name> queue_name;
constexpr static inline auto queue_name(std::string_view val) noexcept
{
    return known<tag::queue_name, std::string_view>(val);
}

//typedef basic<tag::queue_type> queue_type;
constexpr static inline auto queue_type(std::string_view val) noexcept
{
    return known<tag::queue_type, std::string_view>(val);
}

//typedef basic<tag::content_encoding> content_encoding;
constexpr static inline auto content_encoding(std::string_view val) noexcept
{
    return known<tag::content_encoding, std::string_view>(val);
}

//typedef basic<tag::priority> priority;
constexpr static inline auto priority(std::string_view val) noexcept
{
    return known<tag::priority, std::string_view>(val);
}

//typedef basic<tag::correlation_id> correlation_id;
constexpr static inline auto correlation_id(std::string_view val) noexcept
{
    return known<tag::correlation_id, std::string_view>(val);
}

//typedef basic<tag::expiration> expiration;
constexpr static inline auto expiration(std::string_view val) noexcept
{
    return known<tag::expiration, std::string_view>(val);
}

//typedef basic<tag::amqp_message_id> amqp_message_id;
constexpr static inline auto amqp_message_id(std::string_view val) noexcept
{
    return known<tag::amqp_message_id, std::string_view>(val);
}

//typedef basic<tag::timestamp> timestamp;
constexpr static inline auto timestamp(std::string_view val) noexcept
{
    return known<tag::timestamp, std::string_view>(val);
}

//typedef basic<tag::amqp_type> amqp_type;
constexpr static inline auto amqp_type(std::string_view val) noexcept
{
    return known<tag::amqp_type, std::string_view>(val);
}

//typedef basic<tag::user_id> user_id;
constexpr static inline auto user_id(std::string_view val) noexcept
{
    return known<tag::user_id, std::string_view>(val);
}

//typedef basic<tag::app_id> app_id;
constexpr static inline auto app_id(std::string_view val) noexcept
{
    return known<tag::app_id, std::string_view>(val);
}
//typedef basic<tag::cluster_id> cluster_id;
constexpr static inline auto cluster_id(std::string_view val) noexcept
{
    return known<tag::cluster_id, std::string_view>(val);
}

template<class T>
using kr = known_ref<T, std::string_view>;

constexpr static auto durable_on() noexcept {
    return kr<tag::durable>(tag::enable());
}

constexpr static auto durable_off() noexcept {
    return kr<tag::durable>(tag::disable());
}

constexpr static auto auto_delete_on() noexcept {
    return kr<tag::auto_delete>(tag::enable());
}

constexpr static auto auto_delete_off() noexcept {
    return kr<tag::auto_delete>(tag::disable());
}

constexpr static auto persistent_on() noexcept {
    return persistent(tag::enable());
}

static constexpr auto ver12() noexcept {
    return kr<tag::accept_version>(tag::accept_version::v12());
}

static constexpr auto ack_client_individual() noexcept {
    return kr<tag::ack>(tag::ack::client_individual());
}

static constexpr auto ack_client() noexcept {
    return kr<tag::ack>(tag::ack::client());
}

static constexpr auto content_type_text_xml() noexcept {
    return kr<tag::content_type>(tag::content_type::text_xml());
}
static constexpr auto content_type_text_html() noexcept {
    return kr<tag::content_type>(tag::content_type::text_html());
}
static constexpr auto content_type_text_plain() noexcept {
    return kr<tag::content_type>(tag::content_type::text_plain());
}
static constexpr auto content_type_xml() noexcept {
    return kr<tag::content_type>(tag::content_type::xml());
}
static constexpr auto content_type_json() noexcept {
    return kr<tag::content_type>(tag::content_type::json());
}
static constexpr auto content_type_octet() noexcept {
    return kr<tag::content_type>(tag::content_type::octet());
}

} // namespace header
} // namespace stomptalk
