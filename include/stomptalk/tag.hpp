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
};

struct send {
    static constexpr auto num = num_id::send;
    static constexpr auto name() noexcept {
        return make_ref("SEND");
    }
};

struct abort {
    static constexpr auto num = num_id::abort;
    static constexpr auto name() noexcept {
        return make_ref("ABORT");
    }
};

struct begin {
    static constexpr auto num = num_id::begin;
    static constexpr auto name() noexcept {
        return make_ref("BEGIN");
    }
};

struct error {
    static constexpr auto num = num_id::error;
    static constexpr auto name() noexcept {
        return make_ref("ERROR");
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
};

struct message {
    static constexpr auto num = num_id::message;
    static constexpr auto name() noexcept {
        return make_ref("MESSAGE");
    }
};

struct receipt {
    static constexpr auto num = num_id::receipt;
    static constexpr auto name() noexcept {
        return make_ref("RECEIPT");
    }
};

struct connected {
    static constexpr auto num = num_id::connected;
    static constexpr auto name() noexcept {
        return make_ref("CONNECTED");
    }
};

struct subscribe {
    static constexpr auto num = num_id::subscribe;
    static constexpr auto name() noexcept {
        return make_ref("SUBSCRIBE");
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

class base
{
public:
    typedef std::size_t value_type;

private:
    value_type num_id_ = { num_id::none };

public:
    base() = default;
    base(base&&) = default;
    base& operator=(base&&) = default;
    base(const base&) = default;
    base& operator=(const base&) = default;


    explicit base(value_type num_id) noexcept
        : num_id_(num_id)
    {   }

    std::string_view str() const noexcept
    {
        using namespace tag;

        switch (num_id_)
        {
        case num_id::none:
            return make_ref("none");
        case ack::num:
            return ack::name();
        case nack::num:
            return nack::name();
        case send::num:
            return send::name();
        case abort::num:
            return abort::name();
        case begin::num:
            return begin::name();
        case error::num:
            return error::name();
        case commit::num:
            return commit::name();
        case connect::num:
            return connect::name();
        case message::num:
            return message::name();
        case receipt::num:
            return receipt::name();
        case subscribe::num:
            return subscribe::name();
        case connected::num:
            return connected::name();
        case disconnect::num:
            return disconnect::name();
        case unsubscribe::num:
            return unsubscribe::name();
        default: ;
        }

        return make_ref("unknown");
    }

    void set(value_type num_id) noexcept
    {
        num_id_ = num_id;
    }

    base& operator=(value_type num_id) noexcept
    {
        set(num_id);
        return *this;
    }

    value_type num_id() const noexcept
    {
        return num_id_;
    }

    operator value_type() const noexcept
    {
        return num_id();
    }
};


template <class T>
static constexpr std::size_t size_of(T) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
static constexpr bool detect(method::base& method, const char *text, T) noexcept
{
    auto rc = eqstr(T::name(), text);
    if (rc)
        method = T::num;
    return rc;
}

template <class T, class V>
static constexpr bool detect(method::base& method, V text, T) noexcept
{
    return detect(method, text.data(), T());
}

//template <class T>
//static constexpr bool equal(const T&, const char *text)
//{
//    constexpr auto name = T::name();
//    return memeq<size_of(name)>::cmp(name.data(), text);
//}

} // namespace method

namespace header {

struct num_id
{

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
    last_type_id = message
    // type_next    = last_type_id + 1
};

};

struct mask_id {

enum type : std::uint64_t
{
    content_length  = 1ull << num_id::content_length,
    content_type    = 1ull << num_id::content_type,
    accept_version  = 1ull << num_id::accept_version,
    host            = 1ull << num_id::host,
    version         = 1ull << num_id::version,
    destination     = 1ull << num_id::destination,
    id              = 1ull << num_id::id,
    transaction     = 1ull << num_id::transaction,
    message_id      = 1ull << num_id::message_id,
    subscription    = 1ull << num_id::subscription,
    receipt_id      = 1ull << num_id::receipt_id,
    login           = 1ull << num_id::login,
    passcode        = 1ull << num_id::passcode,
    heart_beat      = 1ull << num_id::heart_beat,
    session         = 1ull << num_id::session,
    server          = 1ull << num_id::server,
    ack             = 1ull << num_id::ack,
    receipt         = 1ull << num_id::receipt,
    message         = 1ull << num_id::message,
    last_mask_id    = message
    // mask_next    = last_mask_id << 1
};

}; // struct mask_id

namespace tag {

struct content_length {
    static constexpr auto num = num_id::content_length;
    static constexpr auto mask = mask_id::content_length;
    static constexpr auto name() noexcept {
        return make_ref("content-length");
    }
};

struct content_type {
    static constexpr auto num = num_id::content_type;
    static constexpr auto mask = mask_id::content_type;
    static constexpr auto name() noexcept {
        return make_ref("content-type");
    }

    struct content_type_id
    {
        enum type
            : std::uint64_t
        {
            none    = 0,
            octet   = 1,    // default type
            html    = 1 << 0x01,
            json    = 1 << 0x02,
            xml     = 1 << 0x03,
            text    = 1 << 0x04,
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

    static inline
    content_type_id::type eval_content_type(std::string_view val) noexcept
    {
        content_type_id::type rc = content_type_id::octet;

        switch (val.size())
        {
        case size_of(text_xml()):
            if (eqstr(text_xml(), val))
                rc = content_type_id::xml;
            break;
        case size_of(text_html()):
            if (eqstr(text_html(), val))
                rc = content_type_id::html;
            break;
        case size_of(text_plain()):
            if (eqstr(text_plain(), val))
                rc = content_type_id::html;
            break;
        case size_of(xml()):
            if (eqstr(xml(), val))
                rc = content_type_id::xml;
            break;
        case size_of(json()):
            if (eqstr(json(), val))
                rc = content_type_id::json;
            break;
        case size_of(octet()):
        default: ;
        }

        return rc;
    }
};

struct heart_beat {
    static constexpr auto num = num_id::heart_beat;
    static constexpr auto mask = mask_id::heart_beat;
    static constexpr auto name() noexcept {
        return make_ref("heart-beat");
    }
};

struct accept_version {
    static constexpr auto num = num_id::accept_version;
    static constexpr auto mask = mask_id::accept_version;
    static constexpr auto name() noexcept {
        return make_ref("accept-version");
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
};

struct login {
    static constexpr auto num = num_id::login;
    static constexpr auto mask = mask_id::login;
    static constexpr auto name() noexcept {
        return make_ref("login");
    }
};

struct passcode {
    static constexpr auto num = num_id::passcode;
    static constexpr auto mask = mask_id::passcode;
    static constexpr auto name() noexcept {
        return make_ref("passcode");
    }
};

struct destination {
    static constexpr auto num = num_id::destination;
    static constexpr auto mask = mask_id::destination;
    static constexpr auto name() noexcept {
        return make_ref("destination");
    }
};

struct message_id {
    static constexpr auto num = num_id::message_id;
    static constexpr auto mask = mask_id::message_id;
    static constexpr auto name() noexcept {
        return make_ref("message-id");
    }
};

struct subscription {
    static constexpr auto num = num_id::subscription;
    static constexpr auto mask = mask_id::subscription;
    static constexpr auto name() noexcept {
        return make_ref("subscription");
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
};

struct receipt_id {
    static constexpr auto num = num_id::receipt_id;
    static constexpr auto mask = mask_id::receipt_id;
    static constexpr auto name() noexcept {
        return make_ref("receipt-id");
    }
};

} // namespace tag

template <class T>
static constexpr std::size_t size_of(T) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
static constexpr num_id::type detect(const char *text, T) noexcept
{
    return eqstr(T::name(), text) ? T::num : num_id::none;
}

template <class T, class V>
static constexpr num_id::type detect(V text, T) noexcept
{
    return detect(text.data(), T());
}

static inline
num_id::type eval_stomp_header_type(std::string_view hdr) noexcept
{
    switch (hdr.size())
    {
    case size_of(tag::id()):
        return detect(hdr, tag::id());
    case size_of(tag::ack()):
        return detect(hdr, tag::ack());
    default: ;
    }

    return num_id::none;
}

} // namespace header
} // namespace stomptalk

template<class C, class T>
constexpr std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    stomptalk::method::base method)
{
    return os << method.str();
}
