#pragma once

#include "stomptalk/frame.hpp"

namespace stomptalk {
namespace rabbitmq {

struct num_id
{

enum type : std::size_t
{
    none                        = header::num_id::none,
    prefetch_count              = header::num_id::last_num_id + 1,
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
    redelivered                 = prefetch_count + 13,
    original_exchange           = prefetch_count + 14,
    original_routing_key        = prefetch_count + 15,
    last_num_id                 = original_routing_key
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
    redelivered                 = 1ull << num_id::redelivered,
    original_exchange           = 1ull << num_id::original_exchange,
    original_routing_key        = 1ull << num_id::original_routing_key,
    last_mask_id                = original_routing_key
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

struct expires {
    static constexpr auto num = num_id::expires;
    static constexpr auto mask = mask::expires;
    static constexpr auto name() noexcept {
        return make_ref("expires");
    }
};

struct redelivered {
    static constexpr auto num = num_id::redelivered;
    static constexpr auto mask = mask::redelivered;
    static constexpr auto name() noexcept {
        return make_ref("redelivered");
    }
};

struct max_length {
    static constexpr auto num = num_id::max_length;
    static constexpr auto mask = mask::max_length;
    static constexpr auto name() noexcept {
        return make_ref("x-max-length");
    }
};

struct max_length_bytes {
    static constexpr auto num = num_id::max_length_bytes;
    static constexpr auto mask = mask::max_length_bytes;
    static constexpr auto name() noexcept {
        return make_ref("x-max-length-bytes");
    }
};

struct max_priority {
    static constexpr auto num = num_id::max_priority;
    static constexpr auto mask = mask::max_priority;
    static constexpr auto name() noexcept {
        return make_ref("x-max-priority");
    }
};

struct dead_letter_exchange {
    static constexpr auto num = num_id::dead_letter_exchange;
    static constexpr auto mask = mask::dead_letter_exchange;
    static constexpr auto name() noexcept {
        return make_ref("x-dead-letter-exchange");
    }
};

struct dead_letter_routing_key {
    static constexpr auto num = num_id::dead_letter_routing_key;
    static constexpr auto mask = mask::dead_letter_routing_key;
    static constexpr auto name() noexcept {
        return make_ref("x-dead-letter-routing-key");
    }
};

struct original_exchange {
    static constexpr auto num = num_id::original_exchange;
    static constexpr auto mask = mask::original_exchange;
    static constexpr auto name() noexcept {
        return make_ref("x-original-exchange");
    }
};

struct original_routing_key {
    static constexpr auto num = num_id::original_routing_key;
    static constexpr auto mask = mask::original_routing_key;
    static constexpr auto name() noexcept {
        return make_ref("x-original-routing-key");
    }
};

} // namespace tag

typedef header::basic<tag::prefetch_count> prefetch_count;
typedef header::basic<tag::durable> durable;
typedef header::basic<tag::auto_delete> auto_delete;
typedef header::basic<tag::persistent> persistent;
typedef header::basic<tag::message_ttl> message_ttl;
typedef header::basic<tag::reply_to> reply_to;
typedef header::basic<tag::expires> expires;
typedef header::basic<tag::max_length> max_length;
typedef header::basic<tag::max_length_bytes> max_length_bytes;
typedef header::basic<tag::max_priority> max_priority;
typedef header::basic<tag::dead_letter_exchange> dead_letter_exchange;
typedef header::basic<tag::dead_letter_routing_key> dead_letter_routing_key;
typedef header::basic<tag::redelivered> redelivered;
typedef header::basic<tag::original_exchange> original_exchange;
typedef header::basic<tag::original_routing_key> original_routing_key;


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

std::size_t eval_rabbitmq_header(std::string_view hdr) noexcept;

class header
    : public stomptalk::header::generic
{
public:
    typedef header::generic::type type;

public:
    header() = default;
    header(header&&) = default;
    header& operator=(header&&) = default;
    header(const header&) = default;
    header& operator=(const header&) = default;

    virtual ~header() override = default;

    explicit header(type num_id) noexcept
        : generic(num_id)
    {   }

    explicit header(std::string_view hdr) noexcept
        : header(eval_rabbitmq_header(hdr))
    {   }

    virtual bool valid() const noexcept override;

    virtual std::string_view str() const noexcept override;
};

} // namespace rabbitmq
} // namespace stomptalk
