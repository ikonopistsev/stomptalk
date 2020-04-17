#pragma once

#include "stomptalk/strref.hpp"
#include <cstdint>

namespace stomptalk {
namespace method {

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
    static constexpr auto id = method::ack;
    static constexpr auto name() noexcept {
        return mkref("ACK");
    }
};

struct nack {
    static constexpr auto id = method::nack;
    static constexpr auto name() noexcept {
        return mkref("NACK");
    }
};

struct send {
    static constexpr auto id = method::send;
    static constexpr auto name() noexcept {
        return mkref("SEND");
    }
};

struct abort {
    static constexpr auto id = method::abort;
    static constexpr auto name() noexcept {
        return mkref("ABORT");
    }
};

struct begin {
    static constexpr auto id = method::begin;
    static constexpr auto name() noexcept {
        return mkref("BEGIN");
    }
};

struct commit {
    static constexpr auto id = method::commit;
    static constexpr auto name() noexcept {
        return mkref("COMMIT");
    }
};

struct connect {
    static constexpr auto id = method::connect;
    static constexpr auto name() noexcept {
        return mkref("CONNECT");
    }
};

struct message {
    static constexpr auto id = method::message;
    static constexpr auto name() noexcept {
        return mkref("MESSAGE");
    }
};

struct receipt {
    static constexpr auto id = method::receipt;
    static constexpr auto name() noexcept {
        return mkref("RECEIPT");
    }
};

struct connected {
    static constexpr auto id = method::connected;
    static constexpr auto name() noexcept {
        return mkref("CONNECTED");
    }
};

struct subscribe {
    static constexpr auto id = method::subscribe;
    static constexpr auto name() noexcept {
        return mkref("SUBSCRIBE");
    }
};

struct disconnect {
    static constexpr auto id = method::disconnect;
    static constexpr auto name() noexcept {
        return mkref("DISCONNECT");
    }
};

struct unsubscribe {
    static constexpr auto id = method::unsubscribe;
    static constexpr auto name() noexcept {
        return mkref("UNSUBSCRIBE");
    }
};

template <class T>
static constexpr std::size_t size_of(const T&) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
static constexpr bool detect_method_id(method::type& rc,
    const T&, const char *text) noexcept
{
    constexpr auto name = T::name();
    auto res =  memeq<size_of(name)>::cmp(name.data(), text);
    if (res)
        rc = T::id;
    return res;
}

} // namespace tag
} // namespace stomptalk
