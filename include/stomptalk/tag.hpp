#pragma once

#include "stomptalk/memeq.hpp"
#include "stomptalk/fnv1a.hpp"
#include <string_view>
#include <cstdint>

namespace stomptalk {
namespace method {

struct num_id {

enum type
    : std::size_t
{
    none = 0,
    ack,
    nack,
    send,
    abort,
    begin,
    error,
    stomp,
    commit,
    connect,
    message,
    receipt,
    subscribe,
    connected,
    disconnect,
    unsubscribe,
    unknown
};

};

namespace tag {

using namespace std::literals;

struct ack {
    constexpr static auto num = num_id::ack;
    constexpr static auto text = "ACK"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct nack {
    constexpr static auto num = num_id::nack;
    constexpr static auto text = "NACK"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct send {
    constexpr static auto num = num_id::send;
    constexpr static auto text = "SEND"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct abort {
    constexpr static auto num = num_id::abort;
    constexpr static auto text = "ABORT"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct begin {
    constexpr static auto num = num_id::begin;
    constexpr static auto text = "BEGIN"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct error {
    constexpr static auto num = num_id::error;
    constexpr static auto text = "ERROR"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct stomp {
    constexpr static auto num = num_id::stomp;
    constexpr static auto text = "STOMP"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct commit {
    constexpr static auto num = num_id::commit;
    constexpr static auto text = "COMMIT"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct connect {
    constexpr static auto num = num_id::connect;
    constexpr static auto text = "CONNECT"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct message {
    constexpr static auto num = num_id::message;
    constexpr static auto text = "MESSAGE"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct receipt {
    constexpr static auto num = num_id::receipt;
    constexpr static auto text = "RECEIPT"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct connected {
    constexpr static auto num = num_id::connected;
    constexpr static auto text = "CONNECTED"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct subscribe {
    constexpr static auto num = num_id::subscribe;
    constexpr static auto text = "SUBSCRIBE"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct disconnect {
    constexpr static auto num = num_id::disconnect;
    constexpr static auto text = "DISCONNECT"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct unsubscribe {
    constexpr static auto num = num_id::unsubscribe;
    constexpr static auto text = "UNSUBSCRIBE"sv;
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

} // namespace tag

struct hash_id {

enum type
    : std::size_t
{
    none = 0,
    ack = tag::ack::text_hash,
    nack = tag::nack::text_hash,
    send = tag::send::text_hash,
    abort = tag::abort::text_hash,
    begin = tag::begin::text_hash,
    error = tag::error::text_hash,
    stomp = tag::stomp::text_hash,
    commit = tag::commit::text_hash,
    connect = tag::connect::text_hash,
    message = tag::message::text_hash,
    receipt = tag::receipt::text_hash,
    subscribe = tag::subscribe::text_hash,
    connected = tag::connected::text_hash,
    disconnect = tag::disconnect::text_hash,
    unsubscribe = tag::unsubscribe::text_hash,
};

};

template <class T>
std::size_t detect(T, const char *val) noexcept
{
    return eqstr<T::text_size>(T::text.data(), val) ?
        std::size_t(T::num) : std::size_t(num_id::none);
}

template <class T>
constexpr std::size_t detect(T, std::string_view val) noexcept
{
    return eqstr<T::text_size>(T::text.data(), val.data()) ?
        std::size_t(T::num) : std::size_t(num_id::none);
}

std::size_t eval_stom_method(std::string_view val) noexcept;

class generic
{
public:
    typedef std::size_t type;

private:
    type num_id_ = { num_id::none };

public:
    generic() = default;
    generic(generic&&) = default;
    generic& operator=(generic&&) = default;
    generic(const generic&) = default;
    generic& operator=(const generic&) = default;

    virtual ~generic() = default;

    explicit generic(type num_id) noexcept
        : num_id_(num_id)
    {   }

    explicit generic(std::string_view val) noexcept
        : num_id_(eval_stom_method(val))
    {   }

    virtual bool valid() const noexcept;

    virtual std::string_view str() const noexcept;

    void set(type num_id) noexcept
    {
        num_id_ = num_id;
    }

    void reset()
    {
        set(num_id::none);
    }

    generic& operator=(type num_id) noexcept
    {
        set(num_id);
        return *this;
    }

    type num_id() const noexcept
    {
        return num_id_;
    }

    operator type() const noexcept
    {
        return num_id();
    }
};

} // namespace method

namespace header {

struct num_id {

enum type : std::size_t
{
    none = 0,
    content_length,
    content_type,
    accept_version,
    host,
    version,
    destination,
    id,
    transaction,
    message_id,
    subscription,
    receipt_id,
    login,
    passcode,
    heart_beat,
    session,
    server,
    ack,
    receipt,
    message,
    prefetch_count,
    durable,
    auto_delete,
    message_ttl,
    // https://www.rabbitmq.com/ttl.html#queue-ttl
    expires,
    max_length,
    max_length_bytes,
    dead_letter_exchange,
    dead_letter_routing_key,
    max_priority,
    persistent,
    reply_to,
    redelivered,
    original_exchange,
    original_routing_key,
    // https://www.rabbitmq.com/stomp.html#d.ugqn
    queue_name,
    // https://www.rabbitmq.com/stomp.html#queue-parameters
    queue_type,
    //https://www.rabbitmq.com/stomp.html#pear.ap
    content_encoding,
    priority,
    correlation_id, // Helps correlate requests with responses, see tutorial 6
    expiration, // https://www.rabbitmq.com/ttl.html
    amqp_message_id,    // Arbitrary message ID
    timestamp,  // Application-provided timestamp
    amqp_type,  // Application-specific message type, e.g. "orders.created"
    user_id,
    app_id,
    cluster_id,
    delivery_mode,
    count,
    unknown = count,
    last_num_id = cluster_id
};

};

struct mask_id {

enum type : std::uint64_t
{
    none                        = 0,
    content_length              = 1ull << num_id::none,
    content_type                = 1ull << num_id::content_type,
    accept_version              = 1ull << num_id::accept_version,
    host                        = 1ull << num_id::host,
    version                     = 1ull << num_id::version,
    destination                 = 1ull << num_id::destination,
    id                          = 1ull << num_id::id,
    transaction                 = 1ull << num_id::transaction,
    message_id                  = 1ull << num_id::message_id,
    subscription                = 1ull << num_id::subscription,
    receipt_id                  = 1ull << num_id::receipt_id,
    login                       = 1ull << num_id::login,
    passcode                    = 1ull << num_id::passcode,
    heart_beat                  = 1ull << num_id::heart_beat,
    session                     = 1ull << num_id::session,
    server                      = 1ull << num_id::server,
    ack                         = 1ull << num_id::ack,
    receipt                     = 1ull << num_id::receipt,
    message                     = 1ull << num_id::message,
    prefetch_count              = 1ull << num_id::prefetch_count,
    durable                     = 1ull << num_id::durable,
    auto_delete                 = 1ull << num_id::auto_delete,
    message_ttl                 = 1ull << num_id::message_ttl,
    expires                     = 1ull << num_id::expires,
    max_length                  = 1ull << num_id::max_length,
    max_length_bytes            = 1ull << num_id::max_length_bytes,
    dead_letter_exchange        = 1ull << num_id::dead_letter_exchange,
    dead_letter_routing_key     = 1ull << num_id::dead_letter_routing_key,
    max_priority                = 1ull << num_id::max_priority,
    persistent                  = 1ull << num_id::persistent,
    reply_to                    = 1ull << num_id::reply_to,
    redelivered                 = 1ull << num_id::redelivered,
    original_exchange           = 1ull << num_id::original_exchange,
    original_routing_key        = 1ull << num_id::original_routing_key,
    queue_name                  = 1ull << num_id::queue_name,
    queue_type                  = 1ull << num_id::queue_type,
    //https://www.rabbitmq.com/stomp.html#pear.ap
    content_encoding            = 1ull << num_id::content_encoding,
    priority                    = 1ull << num_id::priority,
    correlation_id              = 1ull << num_id::correlation_id,
    expiration                  = 1ull << num_id::expiration,
    amqp_message_id             = 1ull << num_id::amqp_message_id,
    timestamp                   = 1ull << num_id::timestamp,
    amqp_type                   = 1ull << num_id::amqp_type,
    user_id                     = 1ull << num_id::user_id,
    app_id                      = 1ull << num_id::app_id,
    cluster_id                  = 1ull << num_id::cluster_id,
    delivery_mode               = 1ull << num_id::delivery_mode,
    last_mask_id                = original_routing_key
};

}; // struct mask_id

namespace tag {

using namespace std::literals;

struct content_length {
    constexpr static auto num = num_id::content_length;
    constexpr static auto mask = mask_id::content_length;
    constexpr static auto header = "\ncontent-length:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);

};

struct content_type {
    constexpr static auto num = num_id::content_type;
    constexpr static auto mask = mask_id::content_type;
    constexpr static auto header = "\ncontent-type:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);


    struct content_type_id
    {
        enum type
            : std::size_t
        {
            none    = 0,
            octet   = 1,    // default type
            html    = 2,
            json    = 3,
            xml     = 4,
            text    = 5,
            last_content_type_id = text
            // mask_next    = last_mask_id << 1
        };
    };

    // вообще должно быть
    // тип/подтип;параметр=значение
    // https://developer.mozilla.org/ru/docs/Web/HTTP/Basics_of_HTTP/MIME_types
    // но мы упростим

    constexpr static auto header_text_xml() noexcept {
        return "\ncontent-type:text/xml"sv;
    }
    constexpr static auto text_xml() noexcept {
        return header_text_xml().substr(header_size);
    }
    constexpr static auto header_tex_html() noexcept {
        return "\ncontent-type:text/html"sv;
    }
    constexpr static auto text_html() noexcept {
        return header_tex_html().substr(header_size);
    }
    constexpr static auto header_text_plain() noexcept {
        return "\ncontent-type:text/plain"sv;
    }
    constexpr static auto text_plain() noexcept {
        return header_text_plain().substr(header_size);
    }
    constexpr static auto header_xml() noexcept {
        return "\ncontent-type:application/xml"sv;
    }
    constexpr static auto xml() noexcept {
        return header_xml().substr(header_size);
    }
    constexpr static auto header_json() noexcept {
        return "\ncontent-type:application/json"sv;
    }
    constexpr static auto json() noexcept {
        return header_json().substr(header_size);
    }
    constexpr static auto header_octet() noexcept {
        return "\ncontent-type:application/octet-stream"sv;
    }
    constexpr static auto octet() noexcept {
        return header_octet().substr(header_size);
    }

    static content_type_id::type
        eval_content_type(std::string_view val) noexcept;
};

struct accept_version {
    constexpr static auto num = num_id::accept_version;
    constexpr static auto mask = mask_id::accept_version;
    constexpr static auto header = "\naccept-version:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);

    constexpr static auto header_v12() noexcept {
        return "\naccept-version:1.2"sv;
    }
    constexpr static auto v12() noexcept {
        return header_v12().substr(header_size);
    }
};

struct host {
    constexpr static auto num = num_id::host;
    constexpr static auto mask = mask_id::host;
    constexpr static auto header = "\nhost:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct version {
    constexpr static auto num = num_id::version;
    constexpr static auto mask = mask_id::version;
    constexpr static auto header = "\nversion:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);

    constexpr static auto header_v12() noexcept {
        return "\nversion:1.2"sv;
    }
    constexpr static auto v12() noexcept {
        return header_v12().substr(header_size);
    }
};

struct login {
    constexpr static auto num = num_id::login;
    constexpr static auto mask = mask_id::login;
    constexpr static auto header = "\nlogin:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct server {
    constexpr static auto num = num_id::server;
    constexpr static auto mask = mask_id::server;
    constexpr static auto header = "\nserver:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct passcode {
    constexpr static auto num = num_id::passcode;
    constexpr static auto mask = mask_id::passcode;
    constexpr static auto header = "\npasscode:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct heart_beat {
    constexpr static auto num = num_id::heart_beat;
    constexpr static auto mask = mask_id::heart_beat;
    constexpr static auto header = "\nheart-beat:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct session {
    constexpr static auto num = num_id::session;
    constexpr static auto mask = mask_id::session;
    constexpr static auto header = "\nsession:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct destination {
    constexpr static auto num = num_id::destination;
    constexpr static auto mask = mask_id::destination;
    constexpr static auto header = "\ndestination:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct transaction {
    constexpr static auto num = num_id::transaction;
    constexpr static auto mask = mask_id::transaction;
    constexpr static auto header = "\ntransaction:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct message_id {
    constexpr static auto num = num_id::message_id;
    constexpr static auto mask = mask_id::message_id;
    constexpr static auto header = "\nmessage-id:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct subscription {
    constexpr static auto num = num_id::subscription;
    constexpr static auto mask = mask_id::subscription;
    constexpr static auto header = "\nsubscription:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct ack {
    constexpr static auto num = num_id::ack;
    constexpr static auto mask = mask_id::ack;
    constexpr static auto header = "\nack:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);

    constexpr static auto header_client() noexcept {
        return "\nack:client"sv;
    }
    constexpr static auto client() noexcept {
        return header_client().substr(header_size);
    }
    constexpr static auto header_client_individual() noexcept {
        return "\nack:client-individual"sv;
    }
    constexpr static auto client_individual() noexcept {
        return header_client_individual().substr(header_size);
    }
};

struct id {
    constexpr static auto num = num_id::id;
    constexpr static auto mask = mask_id::id;
    constexpr static auto header = "\nid:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct receipt {
    constexpr static auto num = num_id::receipt;
    constexpr static auto mask = mask_id::receipt;
    constexpr static auto header = "\nreceipt:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

// The ERROR frame SHOULD contain a message header with a short description of the error
struct message {
    constexpr static auto num = num_id::message;
    constexpr static auto mask = mask_id::message;
    constexpr static auto header = "\nmessage:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct receipt_id {
    constexpr static auto num = num_id::receipt_id;
    constexpr static auto mask = mask_id::receipt_id;
    constexpr static auto header = "\nreceipt-id:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct prefetch_count {
    constexpr static auto num = num_id::prefetch_count;
    constexpr static auto mask = mask_id::prefetch_count;
    constexpr static auto header = "\nprefetch-count:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct durable {
    constexpr static auto num = num_id::durable;
    constexpr static auto mask = mask_id::durable;
    constexpr static auto header = "\ndurable:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct auto_delete {
    constexpr static auto num = num_id::auto_delete;
    constexpr static auto mask = mask_id::auto_delete;
    constexpr static auto header = "\nauto-delete:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);

    constexpr static auto header_enable() noexcept {
        return "\nauto-delete:true"sv;
    }
    constexpr static auto enable() noexcept {
        return header_enable().substr(header_size);
    }
    constexpr static auto header_disable() noexcept {
        return "\nauto-delete:false"sv;
    }
    constexpr static auto disable() noexcept {
        return header_disable().substr(header_size);
    }
};

struct persistent {
    constexpr static auto num = num_id::persistent;
    constexpr static auto mask = mask_id::persistent;
    constexpr static auto header = "\npersistent:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct message_ttl {
    constexpr static auto num = num_id::message_ttl;
    constexpr static auto mask = mask_id::message_ttl;
    constexpr static auto header = "\nx-message-ttl:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct reply_to {
    constexpr static auto num = num_id::reply_to;
    constexpr static auto mask = mask_id::reply_to;
    constexpr static auto header = "\nreply-to:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

// https://www.rabbitmq.com/ttl.html#queue-ttl
struct expires {
    constexpr static auto num = num_id::expires;
    constexpr static auto mask = mask_id::expires;
    constexpr static auto header = "\nx-expires:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct redelivered {
    constexpr static auto num = num_id::redelivered;
    constexpr static auto mask = mask_id::redelivered;
    constexpr static auto header = "\nredelivered:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct max_length {
    constexpr static auto num = num_id::max_length;
    constexpr static auto mask = mask_id::max_length;
    constexpr static auto header = "\nx-max-length:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct max_length_bytes {
    constexpr static auto num = num_id::max_length_bytes;
    constexpr static auto mask = mask_id::max_length_bytes;
    constexpr static auto header = "\nx-max-length-bytes:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct max_priority {
    constexpr static auto num = num_id::max_priority;
    constexpr static auto mask = mask_id::max_priority;
    constexpr static auto header = "\nx-max-priority:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct dead_letter_exchange {
    constexpr static auto num = num_id::dead_letter_exchange;
    constexpr static auto mask = mask_id::dead_letter_exchange;
    constexpr static auto header = "\nx-dead-letter-exchange:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct dead_letter_routing_key {
    constexpr static auto num = num_id::dead_letter_routing_key;
    constexpr static auto mask = mask_id::dead_letter_routing_key;
    constexpr static auto header = "\nx-dead-letter-routing-key:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct original_exchange {
    constexpr static auto num = num_id::original_exchange;
    constexpr static auto mask = mask_id::original_exchange;
    constexpr static auto header = "\nx-original-exchange:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct original_routing_key {
    constexpr static auto num = num_id::original_routing_key;
    constexpr static auto mask = mask_id::original_routing_key;
    constexpr static auto header = "\nx-original-routing-key:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

// https://www.rabbitmq.com/stomp.html#d.ugqn
struct queue_name {
    constexpr static auto num = num_id::queue_name;
    constexpr static auto mask = mask_id::queue_name;
    constexpr static auto header = "\nx-queue-name:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

// https://www.rabbitmq.com/stomp.html#queue-parameters
struct queue_type {
    constexpr static auto num = num_id::queue_type;
    constexpr static auto mask = mask_id::queue_type;
    constexpr static auto header = "\nx-queue-type:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct content_encoding {
    constexpr static auto num = num_id::content_encoding;
    constexpr static auto mask = mask_id::content_encoding;
    constexpr static auto header = "\ncontent-encoding:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);

    // https://developer.mozilla.org/ru/docs/Web/HTTP/%D0%97%D0%B0%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BA%D0%B8/Content-Encoding
    struct content_encoding_id
    {
        enum type
            : std::size_t
        {
            none        = 0,
// Indicates the identity function (i.e., no compression or modification).
            identity    = 1,    // default type
// Using the zlib structure (defined in RFC 1950) with the
// deflate compression algorithm (defined in RFC 1951).
            deflate     = 2,
// A format using the Lempel-Ziv-Welch (LZW) algorithm.
            compress    = 3,
// A format using the Lempel-Ziv coding (LZ77), with a 32-bit CRC.
            gzip        = 4,
// A format using the Brotli algorithm.
            br          = 5,
            last_content_type_id = br
        };
    };

    constexpr static auto header_identity() noexcept {
        return "\ncontent-encoding:identity"sv;
    }
    constexpr static auto identity() noexcept {
        return header_identity().substr(header_size);
    }
    constexpr static auto header_deflate() noexcept {
        return "\ncontent-encoding:deflate"sv;
    }
    constexpr static auto deflate() noexcept {
        return header_deflate().substr(header_size);
    }
    constexpr static auto header_compress() noexcept {
        return "\ncontent-encoding:compress"sv;
    }
    constexpr static auto compress() noexcept {
        return header_compress().substr(header_size);
    }
    constexpr static auto header_gzip() noexcept {
        return "\ncontent-encoding:gzip"sv;
    }
    constexpr static auto gzip() noexcept {
        return header_gzip().substr(header_size);
    }
    constexpr static auto header_xgzip() noexcept {
        return "\ncontent-encoding:x-gzip"sv;
    }
    constexpr static auto xgzip() noexcept {
        return header_xgzip().substr(header_size);
    }
    constexpr static auto header_br() noexcept {
        return "\ncontent-encoding:br"sv;
    }
    constexpr static auto br() noexcept {
        return header_br().substr(header_size);
    }
//    static content_type_id::type
//        eval_content_encoding(std::string_view val) noexcept;
};

struct priority {
    constexpr static auto num = num_id::priority;
    constexpr static auto mask = mask_id::priority;
    constexpr static auto header = "\npriority:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct correlation_id {
    constexpr static auto num = num_id::correlation_id;
    constexpr static auto mask = mask_id::correlation_id;
    constexpr static auto header = "\ncorrelation-id:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct expiration {
    constexpr static auto num = num_id::expiration;
    constexpr static auto mask = mask_id::expiration;
    constexpr static auto header = "\nexpiration:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct amqp_message_id {
    constexpr static auto num = num_id::amqp_message_id;
    constexpr static auto mask = mask_id::amqp_message_id;
    constexpr static auto header = "\namqp-message-id:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct timestamp {
    constexpr static auto num = num_id::timestamp;
    constexpr static auto mask = mask_id::timestamp;
    constexpr static auto header = "\ntimestamp:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct amqp_type {
    constexpr static auto num = num_id::amqp_type;
    constexpr static auto mask = mask_id::amqp_type;
    constexpr static auto header = "\ntype:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct user_id {
    constexpr static auto num = num_id::user_id;
    constexpr static auto mask = mask_id::user_id;
    constexpr static auto header = "\nuser-id:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct app_id {
    constexpr static auto num = num_id::app_id;
    constexpr static auto mask = mask_id::app_id;
    constexpr static auto header = "\napp-id:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct cluster_id {
    constexpr static auto num = num_id::cluster_id;
    constexpr static auto mask = mask_id::cluster_id;
    constexpr static auto header = "\ncluster-id:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

struct delivery_mode {
    constexpr static auto num = num_id::delivery_mode;
    constexpr static auto mask = mask_id::delivery_mode;
    constexpr static auto header = "\ndelivery-mode:"sv;
    constexpr static auto header_size = header.size();
    constexpr static auto text = header.substr(1, header_size - 2);
    constexpr static auto text_size = text.size();
    constexpr static auto text_hash = get_hash(text);
};

} // namespace tag

template <class T>
std::size_t detect(T, const char *val) noexcept
{
    return eqstr<T::text_size>(T::text.data(), val) ?
        std::size_t(T::num) : std::size_t(num_id::none);
}

template <class T>
constexpr std::size_t detect(T, std::string_view val) noexcept
{
    return eqstr<T::text_size>(T::text.data(), val.data()) ?
        std::size_t(T::num) : std::size_t(num_id::none);
}

std::size_t eval_header(std::string_view hdr) noexcept;

class generic
{
public:
    typedef std::size_t type;

protected:
    type num_id_ = { num_id::none };

public:
    generic() = default;
    generic(generic&&) = default;
    generic& operator=(generic&&) = default;
    generic(const generic&) = default;
    generic& operator=(const generic&) = default;

    virtual ~generic() = default;

    explicit generic(std::string_view hdr) noexcept
        : num_id_(eval_header(hdr))
    {   }

    explicit generic(type num_id) noexcept
        : num_id_(num_id)
    {   }

    void eval(std::string_view hdr) noexcept;

    bool valid() const noexcept;

    std::string_view str() const noexcept;

    std::size_t hash() const noexcept;

    void set(type num_id) noexcept
    {
        num_id_ = num_id;
    }

    void reset()
    {
        set(num_id::none);
    }

    bool is(type num_id) noexcept
    {
        return num_id_ == num_id;
    }

    generic& operator=(type num_id) noexcept
    {
        set(num_id);
        return *this;
    }

    type num_id() const noexcept
    {
        return num_id_;
    }

    operator type() const noexcept
    {
        return num_id();
    }

    operator bool() const noexcept
    {
        return valid();
    }

#ifndef NDEBUG
    static inline void check_hash_test() noexcept
    {
        bool rc = true;
        generic h;
        for (std::size_t i = 1; i < num_id::unknown; ++i)
        {
            h.set(i);
            auto hdr = h.str();
            auto ch = stomptalk::get_hash(hdr);
            auto mh = h.hash();
            //std::cout << h.str() << ' ' << ch << ' ' << mh << std::endl;
            assert(ch != mh);

            generic h2;
            for (std::size_t j = 1; j < num_id::unknown; ++j)
            {
                if (i != j)
                {
                    h2.set(j);
                    assert(h.hash() == h2.hash());
                }
            }
        }

        h.set(tag::delivery_mode::num);
        assert((tag::delivery_mode::text_hash != h.hash()) ||
            (tag::delivery_mode::text != h.str()));
    }
#endif
};

} // namespace header
} // namespace stomptalk

template<class C, class T>
constexpr std::basic_ostream<C, T>& operator<<(
    std::basic_ostream<C, T>& os, const stomptalk::method::generic& method)
{
    return os << method.str();
}

template<class C, class T>
constexpr std::basic_ostream<C, T>& operator<<(
    std::basic_ostream<C, T>& os, const stomptalk::header::generic& hdr)
{
    return os << hdr.str();
}
