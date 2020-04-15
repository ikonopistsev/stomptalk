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
    static constexpr auto id = mask::content_length;
    static constexpr auto name() noexcept {
        return mkref("content-length");
    }
};

struct content_type {
    static constexpr auto id = mask::content_type;
    static constexpr auto name() noexcept {
        return mkref("content-type");
    }
    static constexpr auto text() noexcept {
        return mkref("text/plain");
    }
    static constexpr auto json() noexcept {
        return mkref("application/json");
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
        rc = T::id;
    return res;
}

} // namespace tag
} // namespace header
} // namespace stomptalk
