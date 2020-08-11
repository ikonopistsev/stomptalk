#pragma once

#include "stomptalk/memeq.hpp"
#include "stomptalk/strref.hpp"

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

struct ack {
    static constexpr auto num = num_id::ack;
    static constexpr auto name() noexcept {
        return make_ref("ACK");
    }
};

struct nack {
    static constexpr auto num = num_id::nack;
    static constexpr auto name() noexcept {
        return make_ref("NACK");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct send {
    static constexpr auto num = num_id::send;
    static constexpr auto name() noexcept {
        return make_ref("SEND");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct abort {
    static constexpr auto num = num_id::abort;
    static constexpr auto name() noexcept {
        return make_ref("ABORT");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct begin {
    static constexpr auto num = num_id::begin;
    static constexpr auto name() noexcept {
        return make_ref("BEGIN");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct error {
    static constexpr auto num = num_id::error;
    static constexpr auto name() noexcept {
        return make_ref("ERROR");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct stomp {
    static constexpr auto num = num_id::stomp;
    static constexpr auto name() noexcept {
        return make_ref("STOMP");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct commit {
    static constexpr auto num = num_id::commit;
    static constexpr auto name() noexcept {
        return make_ref("COMMIT");
    }
};

struct connect {
    static constexpr auto num = num_id::connect;
    static constexpr auto name() noexcept {
        return make_ref("CONNECT");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct message {
    static constexpr auto num = num_id::message;
    static constexpr auto name() noexcept {
        return make_ref("MESSAGE");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct receipt {
    static constexpr auto num = num_id::receipt;
    static constexpr auto name() noexcept {
        return make_ref("RECEIPT");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct connected {
    static constexpr auto num = num_id::connected;
    static constexpr auto name() noexcept {
        return make_ref("CONNECTED");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct subscribe {
    static constexpr auto num = num_id::subscribe;
    static constexpr auto name() noexcept {
        return make_ref("SUBSCRIBE");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct disconnect {
    static constexpr auto num = num_id::disconnect;
    static constexpr auto name() noexcept {
        return make_ref("DISCONNECT");
    }
};

struct unsubscribe {
    static constexpr auto num = num_id::unsubscribe;
    static constexpr auto name() noexcept {
        return make_ref("UNSUBSCRIBE");
    }
};

} // namespace tag


template <class T>
static constexpr std::size_t size_of(T) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
static constexpr std::size_t detect(const char *text, T) noexcept
{
    return eqstr(T::name(), text) ? T::num : num_id::none;
}

template <class T, class V>
static constexpr std::size_t detect(V text, T) noexcept
{
    return detect(text.data(), T());
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
    count,
    last_num_id = original_routing_key
};

};

struct mask_id {

enum type : std::uint64_t
{
    none                        = 0,
    content_length              = 1ull << num_id::content_length,
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
    last_mask_id                = original_routing_key
};

}; // struct mask_id

namespace tag {

struct content_length {
    static constexpr auto num = num_id::content_length;
    static constexpr auto mask = mask_id::content_length;
    static constexpr auto name() noexcept {
        return make_ref("content-length");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct content_type {
    static constexpr auto num = num_id::content_type;
    static constexpr auto mask = mask_id::content_type;
    static constexpr auto name() noexcept {
        return make_ref("content-type");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }

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

    static constexpr auto text_xml() noexcept {
        return make_ref("text/xml");
    }
    static constexpr auto text_html() noexcept {
        return make_ref("text/html");
    }
    static constexpr auto text_plain() noexcept {
        return make_ref("text/plain");
    }
    static constexpr auto xml() noexcept {
        return make_ref("application/xml");
    }
    static constexpr auto json() noexcept {
        return make_ref("application/json");
    }
    static constexpr auto octet() noexcept {
        return make_ref("application/octet-stream");
    }

    static content_type_id::type
        eval_content_type(std::string_view val) noexcept;
};

struct accept_version {
    static constexpr auto num = num_id::accept_version;
    static constexpr auto mask = mask_id::accept_version;
    static constexpr auto name() noexcept {
        return make_ref("accept-version");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
    static constexpr auto v12() noexcept {
        return make_ref("1.2");
    }
};

struct host {
    static constexpr auto num = num_id::host;
    static constexpr auto mask = mask_id::host;
    static constexpr auto name() noexcept {
        return make_ref("host");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct version {
    static constexpr auto num = num_id::version;
    static constexpr auto mask = mask_id::version;
    static constexpr auto name() noexcept {
        return make_ref("version");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct login {
    static constexpr auto num = num_id::login;
    static constexpr auto mask = mask_id::login;
    static constexpr auto name() noexcept {
        return make_ref("login");
    }
};

struct server {
    static constexpr auto num = num_id::server;
    static constexpr auto mask = mask_id::server;
    static constexpr auto name() noexcept {
        return make_ref("server");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct passcode {
    static constexpr auto num = num_id::passcode;
    static constexpr auto mask = mask_id::passcode;
    static constexpr auto name() noexcept {
        return make_ref("passcode");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct heart_beat {
    static constexpr auto num = num_id::heart_beat;
    static constexpr auto mask = mask_id::heart_beat;
    static constexpr auto name() noexcept {
        return make_ref("heart-beat");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct session {
    static constexpr auto num = num_id::session;
    static constexpr auto mask = mask_id::session;
    static constexpr auto name() noexcept {
        return make_ref("session");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct destination {
    static constexpr auto num = num_id::destination;
    static constexpr auto mask = mask_id::destination;
    static constexpr auto name() noexcept {
        return make_ref("destination");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct transaction {
    static constexpr auto num = num_id::transaction;
    static constexpr auto mask = mask_id::transaction;
    static constexpr auto name() noexcept {
        return make_ref("transaction");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct message_id {
    static constexpr auto num = num_id::message_id;
    static constexpr auto mask = mask_id::message_id;
    static constexpr auto name() noexcept {
        return make_ref("message-id");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct subscription {
    static constexpr auto num = num_id::subscription;
    static constexpr auto mask = mask_id::subscription;
    static constexpr auto name() noexcept {
        return make_ref("subscription");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct ack {
    static constexpr auto num = num_id::ack;
    static constexpr auto mask = mask_id::ack;
    static constexpr auto name() noexcept {
        return make_ref("ack");
    }
    static constexpr auto client() noexcept {
        return make_ref("client");
    }
    static constexpr auto client_individual() noexcept {
        return make_ref("client-individual");
    }
};

struct id {
    static constexpr auto num = num_id::id;
    static constexpr auto mask = mask_id::id;
    static constexpr auto name() noexcept {
        return make_ref("id");
    }
};

struct receipt {
    static constexpr auto num = num_id::receipt;
    static constexpr auto mask = mask_id::receipt;
    static constexpr auto name() noexcept {
        return make_ref("receipt");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

static constexpr auto enable() noexcept {
    return make_ref("true");
}
static constexpr auto disable() noexcept {
    return make_ref("false");
}

// The ERROR frame SHOULD contain a message header with a short description of the error
struct message {
    static constexpr auto num = num_id::message;
    static constexpr auto mask = mask_id::message;
    static constexpr auto name() noexcept {
        return make_ref("message");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct receipt_id {
    static constexpr auto num = num_id::receipt_id;
    static constexpr auto mask = mask_id::receipt_id;
    static constexpr auto name() noexcept {
        return make_ref("receipt-id");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct prefetch_count {
    static constexpr auto num = num_id::prefetch_count;
    static constexpr auto mask = mask_id::prefetch_count;
    static constexpr auto name() noexcept {
        return make_ref("prefetch-count");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct durable {
    static constexpr auto num = num_id::durable;
    static constexpr auto mask = mask_id::durable;
    static constexpr auto name() noexcept {
        return make_ref("durable");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct auto_delete {
    static constexpr auto num = num_id::auto_delete;
    static constexpr auto mask = mask_id::auto_delete;
    static constexpr auto name() noexcept {
        return make_ref("auto-delete");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
    static constexpr auto enable() noexcept {
        return make_ref("true");
    }
    static constexpr auto disable() noexcept {
        return make_ref("false");
    }
};

struct persistent {
    static constexpr auto num = num_id::persistent;
    static constexpr auto mask = mask_id::durable;
    static constexpr auto name() noexcept {
        return make_ref("persistent");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct message_ttl {
    static constexpr auto num = num_id::message_ttl;
    static constexpr auto mask = mask_id::message_ttl;
    static constexpr auto name() noexcept {
        return make_ref("x-message-ttl");
    }
};

struct reply_to {
    static constexpr auto num = num_id::reply_to;
    static constexpr auto mask = mask_id::reply_to;
    static constexpr auto name() noexcept {
        return make_ref("reply-to");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

// https://www.rabbitmq.com/ttl.html#queue-ttl
struct expires {
    static constexpr auto num = num_id::expires;
    static constexpr auto mask = mask_id::expires;
    static constexpr auto name() noexcept {
        return make_ref("x-expires");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct redelivered {
    static constexpr auto num = num_id::redelivered;
    static constexpr auto mask = mask_id::redelivered;
    static constexpr auto name() noexcept {
        return make_ref("redelivered");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct max_length {
    static constexpr auto num = num_id::max_length;
    static constexpr auto mask = mask_id::max_length;
    static constexpr auto name() noexcept {
        return make_ref("x-max-length");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct max_length_bytes {
    static constexpr auto num = num_id::max_length_bytes;
    static constexpr auto mask = mask_id::max_length_bytes;
    static constexpr auto name() noexcept {
        return make_ref("x-max-length-bytes");
    }
};

struct max_priority {
    static constexpr auto num = num_id::max_priority;
    static constexpr auto mask = mask_id::max_priority;
    static constexpr auto name() noexcept {
        return make_ref("x-max-priority");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct dead_letter_exchange {
    static constexpr auto num = num_id::dead_letter_exchange;
    static constexpr auto mask = mask_id::dead_letter_exchange;
    static constexpr auto name() noexcept {
        return make_ref("x-dead-letter-exchange");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct dead_letter_routing_key {
    static constexpr auto num = num_id::dead_letter_routing_key;
    static constexpr auto mask = mask_id::dead_letter_routing_key;
    static constexpr auto name() noexcept {
        return make_ref("x-dead-letter-routing-key");
    }
};

struct original_exchange {
    static constexpr auto num = num_id::original_exchange;
    static constexpr auto mask = mask_id::original_exchange;
    static constexpr auto name() noexcept {
        return make_ref("x-original-exchange");
    }
};

struct original_routing_key {
    static constexpr auto num = num_id::original_routing_key;
    static constexpr auto mask = mask_id::original_routing_key;
    static constexpr auto name() noexcept {
        return make_ref("x-original-routing-key");
    }
};

// https://www.rabbitmq.com/stomp.html#d.ugqn
struct queue_name {
    static constexpr auto num = num_id::queue_name;
    static constexpr auto mask = mask_id::queue_name;
    static constexpr auto name() noexcept {
        return make_ref("x-queue-name");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

// https://www.rabbitmq.com/stomp.html#queue-parameters
struct queue_type {
    static constexpr auto num = num_id::queue_type;
    static constexpr auto mask = mask_id::queue_type;
    static constexpr auto name() noexcept {
        return make_ref("x-queue-type");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct content_encoding {
    static constexpr auto num = num_id::content_encoding;
    static constexpr auto mask = mask_id::content_encoding;
    static constexpr auto name() noexcept {
        return make_ref("content-encoding");
    }

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

    static constexpr auto identity() noexcept {
        return make_ref("identity");
    }
    static constexpr auto deflate() noexcept {
        return make_ref("deflate");
    }
    static constexpr auto compress() noexcept {
        return make_ref("compress");
    }
    static constexpr auto gzip() noexcept {
        return make_ref("gzip");
    }
    static constexpr auto xgzip() noexcept {
        return make_ref("x-gzip");
    }
    static constexpr auto br() noexcept {
        return make_ref("br");
    }

//    static content_type_id::type
//        eval_content_encoding(std::string_view val) noexcept;
};

struct priority {
    static constexpr auto num = num_id::priority;
    static constexpr auto mask = mask_id::priority;
    static constexpr auto name() noexcept {
        return make_ref("priority");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct correlation_id {
    static constexpr auto num = num_id::correlation_id;
    static constexpr auto mask = mask_id::correlation_id;
    static constexpr auto name() noexcept {
        return make_ref("correlation-id");
    }
    static constexpr auto letter(std::size_t n = 0) noexcept {
        return name().data()[n];
    }
};

struct expiration {
    static constexpr auto num = num_id::expiration;
    static constexpr auto mask = mask_id::expiration;
    static constexpr auto name() noexcept {
        return make_ref("expiration");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct amqp_message_id {
    static constexpr auto num = num_id::amqp_message_id;
    static constexpr auto mask = mask_id::amqp_message_id;
    static constexpr auto name() noexcept {
        return make_ref("amqp-message-id");
    }
};

struct timestamp {
    static constexpr auto num = num_id::timestamp;
    static constexpr auto mask = mask_id::timestamp;
    static constexpr auto name() noexcept {
        return make_ref("timestamp");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct amqp_type {
    static constexpr auto num = num_id::amqp_type;
    static constexpr auto mask = mask_id::amqp_type;
    static constexpr auto name() noexcept {
        return make_ref("type");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct user_id {
    static constexpr auto num = num_id::user_id;
    static constexpr auto mask = mask_id::user_id;
    static constexpr auto name() noexcept {
        return make_ref("user-id");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct app_id {
    static constexpr auto num = num_id::app_id;
    static constexpr auto mask = mask_id::app_id;
    static constexpr auto name() noexcept {
        return make_ref("app-id");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

struct cluster_id {
    static constexpr auto num = num_id::cluster_id;
    static constexpr auto mask = mask_id::cluster_id;
    static constexpr auto name() noexcept {
        return make_ref("cluster-id");
    }
    static constexpr auto letter() noexcept {
        return name().data()[0];
    }
};

} // namespace tag


template <class T>
constexpr std::size_t size_of(T) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
std::size_t detect(const char *text, T) noexcept
{
    return eqstr(T::name(), text) ?
        std::size_t(T::num) : std::size_t(num_id::none);
}

template <class T, class V>
std::size_t detect(V text, T) noexcept
{
    return detect(text.data(), T());
}

std::size_t eval_stomp_header(std::string_view hdr) noexcept;

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
        : num_id_(eval_stomp_header(hdr))
    {   }

    explicit generic(type num_id) noexcept
        : num_id_(num_id)
    {   }

    void eval(std::string_view hdr) noexcept;

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
