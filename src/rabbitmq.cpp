#include "stomptalk/rabbitmq.hpp"

namespace stomptalk {
namespace rabbitmq {

/*
"durable"
"expires"
"reply-to"
"persistent"
"redelivered"
"auto-delete"
"x-max-length"
"x-message-ttl"
"prefetch-count"
"x-max-priority"
"x-max-length-bytes"
"x-original-exchange"
"x-dead-letter-exchange"
"x-original-routing-key"
"x-dead-letter-routing-key"
*/

std::size_t eval_rabbitmq_header(std::string_view hdr) noexcept
{
    using stomptalk::header::detect;
    using stomptalk::header::size_of;
    using stomptalk::header::eval_stomp_header;

    auto rc = eval_stomp_header(hdr);
    if (!rc)
    {
        switch (hdr.size())
        {
        case size_of(tag::durable()): {
            rc = detect(hdr, tag::durable());
            if (!rc) {
                return detect(hdr, tag::expires());
            }
            return rc;
        }

        case size_of(tag::reply_to()):
            return detect(hdr, tag::reply_to());

        case size_of(tag::persistent()):
            return detect(hdr, tag::persistent());

        case size_of(tag::redelivered()): {
            rc = detect(hdr, tag::redelivered());
            if (!rc) {
                return detect(hdr, tag::auto_delete());
            }
            return rc;
        }

        case size_of(tag::max_length()):
            return detect(hdr, tag::max_length());

        case size_of(tag::message_ttl()):
            return detect(hdr, tag::message_ttl());

        case size_of(tag::prefetch_count()): {
            rc = detect(hdr, tag::prefetch_count());
            if (!rc) {
                return detect(hdr, tag::max_priority());
            }
            return rc;
        }

        case size_of(tag::max_length_bytes()):
            return detect(hdr, tag::max_length_bytes());

        case size_of(tag::original_exchange()):
            return detect(hdr, tag::original_exchange());

        case size_of(tag::dead_letter_exchange()): {
            rc = detect(hdr, tag::dead_letter_exchange());
            if (!rc) {
                return detect(hdr, tag::original_routing_key());
            }
            return rc;
        }

        case size_of(tag::dead_letter_routing_key()):
            return detect(hdr, tag::dead_letter_routing_key());

        default: ;
        }
    }

    return rc;
}

bool header::valid() const noexcept
{
    auto id = num_id();
    if ((num_id::prefetch_count <= id) && (id <= num_id::last_num_id))
        return true;
    return generic::valid();
}

std::string_view header::str() const noexcept
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

    case num_id::original_exchange:
        return tag::original_exchange::name();

    case num_id::original_routing_key:
        return tag::original_routing_key::name();

    default:;
    }

    return generic::str();
}

} // namespace rabbitmq
} // namespace stomptalk
