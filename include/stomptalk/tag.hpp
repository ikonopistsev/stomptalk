#pragma once

#include "stomptalk/memeq.hpp"
#include "stomptalk/strref.hpp"
#include <cstdint>

namespace stomptalk {
namespace header {

namespace mask
{
    enum type : std::uint64_t
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
    static constexpr auto mask = mask::content_length;
    static constexpr auto name() noexcept {
        return make_ref("content-length");
    }
};

struct content_type {
    static constexpr auto mask = mask::content_type;
    static constexpr auto name() noexcept {
        return make_ref("content-type");
    }
    static constexpr auto text() noexcept {
        return make_ref("text/plain");
    }
    static constexpr auto json() noexcept {
        return make_ref("application/json");
    }
};

struct heart_beat {
    static constexpr auto mask = mask::heart_beat;
    static constexpr auto name() noexcept {
        return make_ref("heart-beat");
    }
};

struct accept_version {
    static constexpr auto mask = mask::accept_version;
    static constexpr auto name() noexcept {
        return make_ref("accept-version");
    }
    static constexpr auto v12() noexcept {
        return make_ref("1.2");
    }
};

struct host {
    static constexpr auto mask = mask::host;
    static constexpr auto name() noexcept {
        return make_ref("host");
    }
};

struct login {
    static constexpr auto mask = mask::login;
    static constexpr auto name() noexcept {
        return make_ref("login");
    }
};

struct passcode {
    static constexpr auto mask = mask::passcode;
    static constexpr auto name() noexcept {
        return make_ref("passcode");
    }
};

struct destination {
    static constexpr auto mask = mask::passcode;
    static constexpr auto name() noexcept {
        return make_ref("destination");
    }
};

struct message_id {
    static constexpr auto mask = mask::message_id;
    static constexpr auto name() noexcept {
        return make_ref("message-id");
    }
};

struct subscription {
    static constexpr auto mask = mask::subscription;
    static constexpr auto name() noexcept {
        return make_ref("subscription");
    }
};

struct ack {
    static constexpr auto mask = mask::ack;
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
    static constexpr auto mask = mask::id;
    static constexpr auto name() noexcept {
        return make_ref("id");
    }
};

struct receipt {
    static constexpr auto mask = mask::receipt;
    static constexpr auto name() noexcept {
        return make_ref("receipt");
    }
};

template <class T>
static constexpr std::size_t size_of(const T&) noexcept
{
    return stomptalk::size_of(T::name());
}

template <class T>
static constexpr bool detect_header_id(header::mask::type& rc,
    const T&, const char *text) noexcept
{
    constexpr auto name = T::name();
    auto res =  memeq<size_of(name)>::cmp(name.data(), text);
    if (res)
        rc = T::mask;
    return res;
}

} // namespace tag
} // namespace header
} // namespace stomptalk
