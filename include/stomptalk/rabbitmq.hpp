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

struct expires {
    static constexpr auto num = num_id::expires;
    static constexpr auto mask = mask::expires;
    static constexpr auto name() noexcept {
        return make_ref("expires");
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

struct redelivered {
    static constexpr auto num = num_id::redelivered;
    static constexpr auto mask = mask::redelivered;
    static constexpr auto name() noexcept {
        return make_ref("redelivered");
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

std::size_t eval_rabbitmq_header(std::string_view hdr) noexcept
{
    auto rc = header::eval_stomp_header(hdr);
    if (!rc)
    {

    }

    return rc;
}

class rabbitmq_header
    : public header::generic
{
public:
    typedef header::generic::type type;

public:
    rabbitmq_header() = default;
    rabbitmq_header(rabbitmq_header&&) = default;
    rabbitmq_header& operator=(rabbitmq_header&&) = default;
    rabbitmq_header(const rabbitmq_header&) = default;
    rabbitmq_header& operator=(const rabbitmq_header&) = default;

    virtual ~rabbitmq_header() override = default;

    explicit rabbitmq_header(type num_id) noexcept
        : header::generic(num_id)
    {   }

    explicit rabbitmq_header(std::string_view hdr) noexcept
        : rabbitmq_header(eval_rabbitmq_header(hdr))
    {   }

    virtual bool valid() const noexcept override
    {
        auto id = num_id();
        if ((num_id::prefetch_count <= id) && (id <= num_id::redelivered))
            return true;
        return header::generic::valid();
    }

    virtual std::string_view str() const noexcept override
    {
        switch (num_id())
        {
        case num_id::prefetch_count:
            return tag::prefetch_count::name();

        case num_id::durable:
            return tag::durable::name();

        case num_id::auto_delete:
            return tag::auto_delete::name();

        case num_id::message_ttl:
            return tag::message_ttl::name();

        case num_id::expires:
            return tag::expires::name();

        case num_id::max_length:
            return tag::max_length::name();

        case num_id::max_length_bytes:
            return tag::max_length_bytes::name();

        case num_id::dead_letter_exchange:
            return tag::dead_letter_exchange::name();

        case num_id::dead_letter_routing_key:
            return tag::dead_letter_routing_key::name();

        case num_id::max_priority:
            return tag::max_priority::name();

        case num_id::persistent:
            return tag::persistent::name();

        case num_id::reply_to:
            return tag::reply_to::name();

        case num_id::redelivered:
            return tag::redelivered::name();

        default:;
        }

        return header::generic::str();
    }
};

} // namespace rabbitmq
} // namespace stomptalk
