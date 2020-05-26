#pragma once

#include "stomptalk/memeq.hpp"
#include "stomptalk/strref.hpp"
#include <cstdint>

namespace stomptalk {
namespace method {

struct type_id {

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
    static constexpr auto id = type_id::ack;
    static constexpr auto name() noexcept {
        return make_ref("ACK");
    }
};

struct nack {
    static constexpr auto id = type_id::nack;
    static constexpr auto name() noexcept {
        return make_ref("NACK");
    }
};

struct send {
    static constexpr auto id = type_id::send;
    static constexpr auto name() noexcept {
        return make_ref("SEND");
    }
};

struct abort {
    static constexpr auto id = type_id::abort;
    static constexpr auto name() noexcept {
        return make_ref("ABORT");
    }
};

struct begin {
    static constexpr auto id = type_id::begin;
    static constexpr auto name() noexcept {
        return make_ref("BEGIN");
    }
};

struct commit {
    static constexpr auto id = type_id::commit;
    static constexpr auto name() noexcept {
        return make_ref("COMMIT");
    }
};

struct connect {
    static constexpr auto id = type_id::connect;
    static constexpr auto name() noexcept {
        return make_ref("CONNECT");
    }
};

struct message {
    static constexpr auto id = type_id::message;
    static constexpr auto name() noexcept {
        return make_ref("MESSAGE");
    }
};

struct receipt {
    static constexpr auto id = type_id::receipt;
    static constexpr auto name() noexcept {
        return make_ref("RECEIPT");
    }
};

struct connected {
    static constexpr auto id = type_id::connected;
    static constexpr auto name() noexcept {
        return make_ref("CONNECTED");
    }
};

struct subscribe {
    static constexpr auto id = type_id::subscribe;
    static constexpr auto name() noexcept {
        return make_ref("SUBSCRIBE");
    }
};

struct disconnect {
    static constexpr auto id = type_id::disconnect;
    static constexpr auto name() noexcept {
        return make_ref("DISCONNECT");
    }
};

struct unsubscribe {
    static constexpr auto id = type_id::unsubscribe;
    static constexpr auto name() noexcept {
        return make_ref("UNSUBSCRIBE");
    }
};

} // namespace tag

template <class T>
static constexpr std::size_t size_of(const T&) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
static constexpr bool detect(method::type_id::type& method_id,
    const T&, const char *text) noexcept
{
    constexpr auto name = T::name();
    auto rc =  memeq<size_of(name)>::cmp(name.data(), text);
    if (rc)
        method_id = T::id;
    return rc;
}

template <class T>
static constexpr bool equal(const T&, const char *text)
{
    constexpr auto name = T::name();
    return memeq<size_of(name)>::cmp(name.data(), text);
}

} // namespace method

namespace header {

struct mask_id
{

enum type
    : std::uint64_t
{
    content_length  = 1,
    content_type    = 1 << 0x01,
    accept_version  = 1 << 0x02,
    host            = 1 << 0x03,
    version         = 1 << 0x04,
    destination     = 1 << 0x05,
    id              = 1 << 0x06,
    transaction     = 1 << 0x07,
    message_id      = 1 << 0x08,
    subscription    = 1 << 0x09,
    receipt_id      = 1 << 0x0a,
    login           = 1 << 0x0b,
    passcode        = 1 << 0x0c,
    heart_beat      = 1 << 0x0d,
    session         = 1 << 0x0e,
    server          = 1 << 0x0f,
    ack             = 1 << 0x10,
    receipt         = 1 << 0x11,
    message         = 1 << 0x12,
    last_mask_id    = message
    // mask_next    = last_mask_id << 1
};

};

namespace tag {

struct content_length {
    static constexpr auto mask = mask_id::content_length;
    static constexpr auto name() noexcept {
        return make_ref("content-length");
    }
};

struct content_type {
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

        auto str = val.data();
        auto size = val.size();
        switch (size)
        {
        case size_of(text_xml()):
                if (memeq<size_of(text_xml())>::cmp(text_xml().data(), str))
                    rc = content_type_id::xml;
            break;
        case size_of(text_html()):
            if (memeq<size_of(text_html())>::cmp(text_html().data(), str))
                rc = content_type_id::html;
            break;
        case size_of(text_plain()):
            if (memeq<size_of(text_plain())>::cmp(text_plain().data(), str))
                rc = content_type_id::html;
            break;
        case size_of(xml()):
            if (memeq<size_of(xml())>::cmp(xml().data(), str))
                rc = content_type_id::xml;
            break;
        case size_of(json()):
            if (memeq<size_of(json())>::cmp(json().data(), str))
                rc = content_type_id::json;
            break;
        case size_of(octet()):
        default: ;
        }

        return rc;
    }
};

struct heart_beat {
    static constexpr auto mask = mask_id::heart_beat;
    static constexpr auto name() noexcept {
        return make_ref("heart-beat");
    }
};

struct accept_version {
    static constexpr auto mask = mask_id::accept_version;
    static constexpr auto name() noexcept {
        return make_ref("accept-version");
    }
    static constexpr auto v12() noexcept {
        return make_ref("1.2");
    }
};

struct host {
    static constexpr auto mask = mask_id::host;
    static constexpr auto name() noexcept {
        return make_ref("host");
    }
};

struct login {
    static constexpr auto mask = mask_id::login;
    static constexpr auto name() noexcept {
        return make_ref("login");
    }
};

struct passcode {
    static constexpr auto mask = mask_id::passcode;
    static constexpr auto name() noexcept {
        return make_ref("passcode");
    }
};

struct destination {
    static constexpr auto mask = mask_id::passcode;
    static constexpr auto name() noexcept {
        return make_ref("destination");
    }
};

struct message_id {
    static constexpr auto mask = mask_id::message_id;
    static constexpr auto name() noexcept {
        return make_ref("message-id");
    }
};

struct subscription {
    static constexpr auto mask = mask_id::subscription;
    static constexpr auto name() noexcept {
        return make_ref("subscription");
    }
};

struct ack {
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
    static constexpr auto mask = mask_id::id;
    static constexpr auto name() noexcept {
        return make_ref("id");
    }
};

struct receipt {
    static constexpr auto mask = mask_id::receipt;
    static constexpr auto name() noexcept {
        return make_ref("receipt");
    }
};

} // namespace tag

template <class T>
static constexpr std::size_t size_of(const T&) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
static constexpr bool detect(header::mask_id::type& rc,
    const T&, const char *text) noexcept
{
    constexpr auto name = T::name();
    auto res =  memeq<size_of(name)>::cmp(name.data(), text);
    if (res)
        rc = T::mask;
    return res;
}

} // namespace header
} // namespace stomptalk
