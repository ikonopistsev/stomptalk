#pragma once

#include "stomptalk/frame_base.hpp"

namespace stomptalk {
namespace rabbitmq {

//x-message-ttl
//x-expires
//x-max-length
//x-max-length-bytes
//x-dead-letter-exchange
//x-dead-letter-routing-key
//x-max-priority

namespace mask
{
    enum type : std::uint64_t
    {
        prefetch_count              = 1,
        durable                     = 1 << 0x01,
        auto_delete                 = 1 << 0x02,
        message_ttl                 = 1 << 0x03,
        expires                     = 1 << 0x04,
        max_length                  = 1 << 0x05,
        max_length_bytes            = 1 << 0x06,
        dead_letter_exchange        = 1 << 0x07,
        dead_letter_routing_key     = 1 << 0x08,
        max_priority                = 1 << 0x09,
        persistent                  = 1 << 0x0a,
        reply_to                    = 1 << 0x0b,
        last_mask_id                = reply_to
    };
};

namespace tag {

static constexpr auto enable() noexcept {
    return make_ref("true");
}
static constexpr auto disable() noexcept {
    return make_ref("false");
}

struct prefetch_count {
    static constexpr auto mask = mask::prefetch_count;
    static constexpr auto name() noexcept {
        return make_ref("prefetch-count");
    }
};

struct durable {
    static constexpr auto mask = mask::durable;
    static constexpr auto name() noexcept {
        return make_ref("durable");
    }
};

struct auto_delete {
    static constexpr auto mask = mask::auto_delete;
    static constexpr auto name() noexcept {
        return make_ref("auto-delete");
    }
};

struct persistent {
    static constexpr auto mask = mask::durable;
    static constexpr auto name() noexcept {
        return make_ref("persistent");
    }
};

struct message_ttl {
    static constexpr auto mask = mask::message_ttl;
    static constexpr auto name() noexcept {
        return make_ref("x-message-ttl");
    }
};

struct reply_to {
    static constexpr auto mask = mask::reply_to;
    static constexpr auto name() noexcept {
        return make_ref("reply-to");
    }
};

} // namespace tag

typedef header::basic<tag::prefetch_count> prefetch_count;
typedef header::basic<tag::durable> durable;
typedef header::basic<tag::auto_delete> auto_delete;
typedef header::basic<tag::persistent> persistent;
typedef header::basic<tag::message_ttl> message_ttl;
typedef header::basic<tag::reply_to> reply_to;

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

} // namespace rabbitmq
} // namespace stomptalk
