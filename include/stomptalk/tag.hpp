#pragma once

#include "stomptalk/memeq.hpp"
#include "stomptalk/sv.hpp"

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
    static constexpr auto text = sv("ACK");
    static constexpr auto text_size = text.size();
};

struct nack {
    static constexpr auto num = num_id::nack;
    static constexpr auto text = sv("NACK");
    static constexpr auto text_size = text.size();
};

struct send {
    static constexpr auto num = num_id::send;
    static constexpr auto text = sv("SEND");
    static constexpr auto text_size = text.size();
};

struct abort {
    static constexpr auto num = num_id::abort;
    static constexpr auto text = sv("ABORT");
    static constexpr auto text_size = text.size();
};

struct begin {
    static constexpr auto num = num_id::begin;
    static constexpr auto text = sv("BEGIN");
    static constexpr auto text_size = text.size();
};

struct error {
    static constexpr auto num = num_id::error;
    static constexpr auto text = sv("ERROR");
    static constexpr auto text_size = text.size();
};

struct stomp {
    static constexpr auto num = num_id::stomp;
    static constexpr auto text = sv("STOMP");
    static constexpr auto text_size = text.size();
};

struct commit {
    static constexpr auto num = num_id::commit;
    static constexpr auto text = sv("COMMIT");
    static constexpr auto text_size = text.size();
};

struct connect {
    static constexpr auto num = num_id::connect;
    static constexpr auto text = sv("CONNECT");
    static constexpr auto text_size = text.size();
};

struct message {
    static constexpr auto num = num_id::message;
    static constexpr auto text = sv("MESSAGE");
    static constexpr auto text_size = text.size();
};

struct receipt {
    static constexpr auto num = num_id::receipt;
    static constexpr auto text = sv("RECEIPT");
    static constexpr auto text_size = text.size();
};

struct connected {
    static constexpr auto num = num_id::connected;
    static constexpr auto text = sv("CONNECTED");
    static constexpr auto text_size = text.size();
};

struct subscribe {
    static constexpr auto num = num_id::subscribe;
    static constexpr auto text = sv("SUBSCRIBE");
    static constexpr auto text_size = text.size();
};

struct disconnect {
    static constexpr auto num = num_id::disconnect;
    static constexpr auto text = sv("DISCONNECT");
    static constexpr auto text_size = text.size();
};

struct unsubscribe {
    static constexpr auto num = num_id::unsubscribe;
    static constexpr auto text = sv("UNSUBSCRIBE");
    static constexpr auto text_size = text.size();
};

} // namespace tag


template <class T>
std::size_t detect(T, const char *val) noexcept
{
    return memeq<T::text_size>::cmp(T::text.data(), val) ?
        std::size_t(T::num) : std::size_t(num_id::none);
}

template <class T>
constexpr std::size_t detect(T, std::string_view val) noexcept
{
    return memeq<T::text_size>::cmp(T::text.data(), val.data()) ?
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

struct content_length {
    static constexpr auto num = num_id::content_length;
    static constexpr auto mask = mask_id::content_length;
    static constexpr auto text = sv("content-length");
    static constexpr auto text_size = text.size();
};

struct content_type {
    static constexpr auto num = num_id::content_type;
    static constexpr auto mask = mask_id::content_type;
    static constexpr auto text = sv("content-type");
    static constexpr auto text_size = text.size();

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
        return sv("text/xml");
    }
    static constexpr auto text_html() noexcept {
        return sv("text/html");
    }
    static constexpr auto text_plain() noexcept {
        return sv("text/plain");
    }
    static constexpr auto xml() noexcept {
        return sv("application/xml");
    }
    static constexpr auto json() noexcept {
        return sv("application/json");
    }
    static constexpr auto octet() noexcept {
        return sv("application/octet-stream");
    }

    static content_type_id::type
        eval_content_type(std::string_view val) noexcept;
};

struct accept_version {
    static constexpr auto num = num_id::accept_version;
    static constexpr auto mask = mask_id::accept_version;
    static constexpr auto text = sv("accept-version");
    static constexpr auto text_size = text.size();
    static constexpr auto v12() noexcept {
        return sv("1.2");
    }
};

struct host {
    static constexpr auto num = num_id::host;
    static constexpr auto mask = mask_id::host;
    static constexpr auto text = sv("host");
    static constexpr auto text_size = text.size();
};

struct version {
    static constexpr auto num = num_id::version;
    static constexpr auto mask = mask_id::version;
    static constexpr auto text = sv("version");
    static constexpr auto text_size = text.size();
};

struct login {
    static constexpr auto num = num_id::login;
    static constexpr auto mask = mask_id::login;
    static constexpr auto text = sv("login");
    static constexpr auto text_size = text.size();
};

struct server {
    static constexpr auto num = num_id::server;
    static constexpr auto mask = mask_id::server;
    static constexpr auto text = sv("server");
    static constexpr auto text_size = text.size();
};

struct passcode {
    static constexpr auto num = num_id::passcode;
    static constexpr auto mask = mask_id::passcode;
    static constexpr auto text = sv("passcode");
    static constexpr auto text_size = text.size();
};

struct heart_beat {
    static constexpr auto num = num_id::heart_beat;
    static constexpr auto mask = mask_id::heart_beat;
    static constexpr auto text = sv("heart-beat");
    static constexpr auto text_size = text.size();
};

struct session {
    static constexpr auto num = num_id::session;
    static constexpr auto mask = mask_id::session;
    static constexpr auto text = sv("session");
    static constexpr auto text_size = text.size();
};

struct destination {
    static constexpr auto num = num_id::destination;
    static constexpr auto mask = mask_id::destination;
    static constexpr auto text = sv("destination");
    static constexpr auto text_size = text.size();
};

struct transaction {
    static constexpr auto num = num_id::transaction;
    static constexpr auto mask = mask_id::transaction;
    static constexpr auto text = sv("transaction");
    static constexpr auto text_size = text.size();
};

struct message_id {
    static constexpr auto num = num_id::message_id;
    static constexpr auto mask = mask_id::message_id;
    static constexpr auto text = sv("message-id");
    static constexpr auto text_size = text.size();
};

struct subscription {
    static constexpr auto num = num_id::subscription;
    static constexpr auto mask = mask_id::subscription;
    static constexpr auto text = sv("subscription");
    static constexpr auto text_size = text.size();
};

struct ack {
    static constexpr auto num = num_id::ack;
    static constexpr auto mask = mask_id::ack;
    static constexpr auto text = sv("ack");
    static constexpr auto text_size = text.size();
    static constexpr auto client() noexcept {
        return sv("client");
    }
    static constexpr auto client_individual() noexcept {
        return sv("client-individual");
    }
};

struct id {
    static constexpr auto num = num_id::id;
    static constexpr auto mask = mask_id::id;
    static constexpr auto text = sv("id");
    static constexpr auto text_size = text.size();
};

struct receipt {
    static constexpr auto num = num_id::receipt;
    static constexpr auto mask = mask_id::receipt;
    static constexpr auto text = sv("receipt");
    static constexpr auto text_size = text.size();
};

static constexpr auto enable() noexcept {
    return sv("true");
}
static constexpr auto disable() noexcept {
    return sv("false");
}

// The ERROR frame SHOULD contain a message header with a short description of the error
struct message {
    static constexpr auto num = num_id::message;
    static constexpr auto mask = mask_id::message;
    static constexpr auto text = sv("message");
    static constexpr auto text_size = text.size();
};

struct receipt_id {
    static constexpr auto num = num_id::receipt_id;
    static constexpr auto mask = mask_id::receipt_id;
    static constexpr auto text = sv("receipt-id");
    static constexpr auto text_size = text.size();
};

struct prefetch_count {
    static constexpr auto num = num_id::prefetch_count;
    static constexpr auto mask = mask_id::prefetch_count;
    static constexpr auto text = sv("prefetch-count");
    static constexpr auto text_size = text.size();
};

struct durable {
    static constexpr auto num = num_id::durable;
    static constexpr auto mask = mask_id::durable;
    static constexpr auto text = sv("durable");
    static constexpr auto text_size = text.size();
};

struct auto_delete {
    static constexpr auto num = num_id::auto_delete;
    static constexpr auto mask = mask_id::auto_delete;
    static constexpr auto text = sv("auto-delete");
    static constexpr auto text_size = text.size();
    static constexpr auto enable() noexcept {
        return sv("true");
    }
    static constexpr auto disable() noexcept {
        return sv("false");
    }
};

struct persistent {
    static constexpr auto num = num_id::persistent;
    static constexpr auto mask = mask_id::persistent;
    static constexpr auto text = sv("persistent");
    static constexpr auto text_size = text.size();
};

struct message_ttl {
    static constexpr auto num = num_id::message_ttl;
    static constexpr auto mask = mask_id::message_ttl;
    static constexpr auto text = sv("x-message-ttl");
    static constexpr auto text_size = text.size();
};

struct reply_to {
    static constexpr auto num = num_id::reply_to;
    static constexpr auto mask = mask_id::reply_to;
    static constexpr auto text = sv("reply-to");
    static constexpr auto text_size = text.size();
};

// https://www.rabbitmq.com/ttl.html#queue-ttl
struct expires {
    static constexpr auto num = num_id::expires;
    static constexpr auto mask = mask_id::expires;
    static constexpr auto text = sv("x-expires");
    static constexpr auto text_size = text.size();
};

struct redelivered {
    static constexpr auto num = num_id::redelivered;
    static constexpr auto mask = mask_id::redelivered;
    static constexpr auto text = sv("redelivered");
    static constexpr auto text_size = text.size();
};

struct max_length {
    static constexpr auto num = num_id::max_length;
    static constexpr auto mask = mask_id::max_length;
    static constexpr auto text = sv("x-max-length");
    static constexpr auto text_size = text.size();
};

struct max_length_bytes {
    static constexpr auto num = num_id::max_length_bytes;
    static constexpr auto mask = mask_id::max_length_bytes;
    static constexpr auto text = sv("x-max-length-bytes");
    static constexpr auto text_size = text.size();
};

struct max_priority {
    static constexpr auto num = num_id::max_priority;
    static constexpr auto mask = mask_id::max_priority;
    static constexpr auto text = sv("x-max-priority");
    static constexpr auto text_size = text.size();
};

struct dead_letter_exchange {
    static constexpr auto num = num_id::dead_letter_exchange;
    static constexpr auto mask = mask_id::dead_letter_exchange;
    static constexpr auto text = sv("x-dead-letter-exchange");
    static constexpr auto text_size = text.size();
};

struct dead_letter_routing_key {
    static constexpr auto num = num_id::dead_letter_routing_key;
    static constexpr auto mask = mask_id::dead_letter_routing_key;
    static constexpr auto text = sv("x-dead-letter-routing-key");
    static constexpr auto text_size = text.size();
};

struct original_exchange {
    static constexpr auto num = num_id::original_exchange;
    static constexpr auto mask = mask_id::original_exchange;
    static constexpr auto text = sv("x-original-exchange");
    static constexpr auto text_size = text.size();
};

struct original_routing_key {
    static constexpr auto num = num_id::original_routing_key;
    static constexpr auto mask = mask_id::original_routing_key;
    static constexpr auto text = sv("x-original-routing-key");
    static constexpr auto text_size = text.size();
};

// https://www.rabbitmq.com/stomp.html#d.ugqn
struct queue_name {
    static constexpr auto num = num_id::queue_name;
    static constexpr auto mask = mask_id::queue_name;
    static constexpr auto text = sv("x-queue-name");
    static constexpr auto text_size = text.size();
};

// https://www.rabbitmq.com/stomp.html#queue-parameters
struct queue_type {
    static constexpr auto num = num_id::queue_type;
    static constexpr auto mask = mask_id::queue_type;
    static constexpr auto text = sv("x-queue-type");
    static constexpr auto text_size = text.size();
};

struct content_encoding {
    static constexpr auto num = num_id::content_encoding;
    static constexpr auto mask = mask_id::content_encoding;
    static constexpr auto text = sv("content-encoding");
    static constexpr auto text_size = text.size();

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
        return sv("identity");
    }
    static constexpr auto deflate() noexcept {
        return sv("deflate");
    }
    static constexpr auto compress() noexcept {
        return sv("compress");
    }
    static constexpr auto gzip() noexcept {
        return sv("gzip");
    }
    static constexpr auto xgzip() noexcept {
        return sv("x-gzip");
    }
    static constexpr auto br() noexcept {
        return sv("br");
    }

//    static content_type_id::type
//        eval_content_encoding(std::string_view val) noexcept;
};

struct priority {
    static constexpr auto num = num_id::priority;
    static constexpr auto mask = mask_id::priority;
    static constexpr auto text = sv("priority");
    static constexpr auto text_size = text.size();
};

struct correlation_id {
    static constexpr auto num = num_id::correlation_id;
    static constexpr auto mask = mask_id::correlation_id;
    static constexpr auto text = sv("correlation-id");
    static constexpr auto text_size = text.size();
};

struct expiration {
    static constexpr auto num = num_id::expiration;
    static constexpr auto mask = mask_id::expiration;
    static constexpr auto text = sv("expiration");
    static constexpr auto text_size = text.size();
};

struct amqp_message_id {
    static constexpr auto num = num_id::amqp_message_id;
    static constexpr auto mask = mask_id::amqp_message_id;
    static constexpr auto text = sv("amqp-message-id");
    static constexpr auto text_size = text.size();
};

struct timestamp {
    static constexpr auto num = num_id::timestamp;
    static constexpr auto mask = mask_id::timestamp;
    static constexpr auto text = sv("timestamp");
    static constexpr auto text_size = text.size();
};

struct amqp_type {
    static constexpr auto num = num_id::amqp_type;
    static constexpr auto mask = mask_id::amqp_type;
    static constexpr auto text = sv("type");
    static constexpr auto text_size = text.size();
};

struct user_id {
    static constexpr auto num = num_id::user_id;
    static constexpr auto mask = mask_id::user_id;
    static constexpr auto text = sv("user-id");
    static constexpr auto text_size = text.size();
};

struct app_id {
    static constexpr auto num = num_id::app_id;
    static constexpr auto mask = mask_id::app_id;
    static constexpr auto text = sv("app-id");
    static constexpr auto text_size = text.size();
};

struct cluster_id {
    static constexpr auto num = num_id::cluster_id;
    static constexpr auto mask = mask_id::cluster_id;
    static constexpr auto text = sv("cluster-id");
    static constexpr auto text_size = text.size();
};

struct delivery_mode {
    static constexpr auto num = num_id::delivery_mode;
    static constexpr auto mask = mask_id::delivery_mode;
    static constexpr auto text = sv("delivery-mode");
    static constexpr auto text_size = text.size();
};

} // namespace tag

template <class T>
std::size_t detect(T, const char *val) noexcept
{
    return memeq<T::text_size>::cmp(T::text.data(), val) ?
        std::size_t(T::num) : std::size_t(num_id::none);
}

template <class T>
constexpr std::size_t detect(T, std::string_view val) noexcept
{
    return memeq<T::text_size>::cmp(T::text.data(), val.data()) ?
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
