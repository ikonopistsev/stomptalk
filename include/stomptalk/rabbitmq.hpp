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

//static inline std::size_t eval_rabbitmq_header(std::string_view hdr) noexcept
//{
///*
//    durable                     = prefetch_count + 1,
//    expires                     = prefetch_count + 4,
//    session                     = prefetch_count + 12,
//    reply_to                    = prefetch_count + 11,
//    max_length                  = prefetch_count + 5,
//    persistent                  = prefetch_count + 10,
//    auto_delete                 = prefetch_count + 2,
//    message_ttl                 = prefetch_count + 3,
//    redelivered                 = prefetch_count + 13,
//    max_priority                = prefetch_count + 9,
//    prefetch_count              = header::num_id::last_type_id + 1,
//    max_length_bytes            = prefetch_count + 6,
//    dead_letter_exchange        = prefetch_count + 7,
//    dead_letter_routing_key     = prefetch_count + 8,
//*/
//    switch (hdr.size())
//    {
//    case header::size_of(tag::durable()):
//        return header::detect(hdr, tag::durable());
//    case size_of(tag::durable()): {
//        num_id::type rc = detect(hdr, tag::durable());
//        if (!rc) {
//            rc = detect(hdr, tag::expires());
//            if (!rc) {
//                return detect(hdr, tag::session());
//            }
//        }
//        return rc;
//    }

//    case size_of(tag::ack()):
//        return detect(hdr, tag::ack());
//    case size_of(tag::host()):
//        return detect(hdr, tag::host());
//    case size_of(tag::login()):
//        return detect(hdr, tag::login());
//    case size_of(tag::server()):
//        return detect(hdr, tag::server());
//    case size_of(tag::version()): {
//        num_id::type rc = detect(hdr, tag::version());
//        if (!rc) {
//            rc = detect(hdr, tag::session());
//            if (!rc) {
//                return detect(hdr, tag::receipt());
//            }
//        }
//        return rc;
//    }
//    case size_of(tag::passcode()):
//        return detect(hdr, tag::passcode());
//    case size_of(tag::message_id()): {
//        num_id::type rc = detect(hdr, tag::receipt_id());
//        if (!rc) {
//            rc = detect(hdr, tag::message_id());
//            if (!rc) {
//                return detect(hdr, tag::heart_beat());
//            }
//        }
//        return rc;
//    }
//    case size_of(tag::destination()): {
//        num_id::type rc = detect(hdr, tag::destination());
//        if (!rc) {
//            return detect(hdr, tag::transaction());
//        }
//        return rc;
//    }
//    case size_of(tag::content_type()): {
//        num_id::type rc = detect(hdr, tag::content_type());
//        if (!rc) {
//            return detect(hdr, tag::subscription());
//        }
//        return rc;
//    }
//    case size_of(tag::content_length()): {
//        num_id::type rc = detect(hdr, tag::content_length());
//        if (!rc) {
//            return detect(hdr, tag::accept_version());
//        }
//        return rc;
//    }
//    default: ;
//    }

//    return num_id::none;
//}

} // namespace rabbitmq
} // namespace stomptalk
