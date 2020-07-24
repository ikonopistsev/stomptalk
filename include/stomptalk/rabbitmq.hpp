#pragma once

#include "stomptalk/frame.hpp"

namespace stomptalk {
namespace rabbitmq {

//x-message-ttl
//x-expires
//x-max-length
//x-max-length-bytes
//x-dead-letter-exchange
//x-dead-letter-routing-key
//x-max-priority

struct num_id
{

enum type : std::size_t
{
    prefetch_count              = header::num_id::last_type_id + 1,
    durable                     = prefetch_count + 1,
    auto_delete                 = prefetch_count + 2,
    message_ttl                 = prefetch_count + 3,
    expires                     = prefetch_count + 4,
    max_length                  = prefetch_count + 5,
    max_length_bytes            = prefetch_count + 6,
    dead_letter_exchange        = prefetch_count + 7,
    dead_letter_routing_key     = prefetch_count + 8,
    max_priority                = prefetch_count + 9,
    persistent                  = prefetch_count + 10,
    reply_to                    = prefetch_count + 11,
    session                     = prefetch_count + 12,
    redelivered                 = prefetch_count + 13,
    last_mask_id                = redelivered
};

};

namespace mask
{
    enum type : std::uint64_t
    {
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
        session                     = 1ull << num_id::session,
        redelivered                 = 1ull << num_id::redelivered,
        last_mask_id                = redelivered
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
    static constexpr auto num = num_id::prefetch_count;
    static constexpr auto mask = mask::prefetch_count;
    static constexpr auto name() noexcept {
        return make_ref("prefetch-count");
    }
};

struct durable {
    static constexpr auto num = num_id::durable;
    static constexpr auto mask = mask::durable;
    static constexpr auto name() noexcept {
        return make_ref("durable");
    }
};

struct auto_delete {
    static constexpr auto num = num_id::auto_delete;
    static constexpr auto mask = mask::auto_delete;
    static constexpr auto name() noexcept {
        return make_ref("auto-delete");
    }
};

struct persistent {
    static constexpr auto num = num_id::persistent;
    static constexpr auto mask = mask::durable;
    static constexpr auto name() noexcept {
        return make_ref("persistent");
    }
};

struct message_ttl {
    static constexpr auto num = num_id::message_ttl;
    static constexpr auto mask = mask::message_ttl;
    static constexpr auto name() noexcept {
        return make_ref("x-message-ttl");
    }
};

struct reply_to {
    static constexpr auto num = num_id::reply_to;
    static constexpr auto mask = mask::reply_to;
    static constexpr auto name() noexcept {
        return make_ref("reply-to");
    }
};

struct session {
    static constexpr auto num = num_id::session;
    static constexpr auto mask = mask::session;
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

//class subscription_base
//{
//public:
//    virtual void message(v12::incoming::message message);
//};

} // namespace rabbitmq
} // namespace stomptalk
