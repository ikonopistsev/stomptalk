#include "stomptalk/tag.hpp"
#include <cassert>

namespace stomptalk {
namespace method {

std::size_t eval_stom_method(std::string_view val) noexcept
{
    assert(!val.empty());

    std::size_t rc = num_id::none;
    auto name = val.data();
    switch (val.size())
    {
    case tag::ack::text_size:
        rc = detect(tag::ack(), name);
    break;

    case tag::nack::text_size:
        switch (name[0])
        {
        case tag::send::text[0]:
            rc = detect(tag::send(), name);
        break;
        case tag::nack::text[0]:
            rc = detect(tag::nack(), name);
        break;
        }
    break;

    case tag::abort::text_size:
        switch (name[0])
        {
        case tag::abort::text[0]:
            rc = detect(tag::abort(), name);
        break;
        case tag::begin::text[0]:
            rc = detect(tag::begin(), name);
        break;
        case tag::error::text[0]:
            rc = detect(tag::error(), name);
        break;
        case tag::stomp::text[0]:
            rc = detect(tag::stomp(), name);
        break;
        }
    break;

    case tag::commit::text_size:
        rc = detect(tag::commit(), name);
    break;

    case tag::message::text_size:
        switch (name[0])
        {
        case tag::message::text[0]:
            rc = detect(tag::message(), name);
        break;
        case tag::receipt::text[0]:
            rc = detect(tag::receipt(), name);
        break;
        case tag::connect::text[0]:
            rc = detect(tag::connect(), name);
        break;
        }
    break;

    case tag::connected::text_size:
        switch (name[0])
        {
        case tag::connected::text[0]:
            rc = detect(tag::connected(), name);
        break;
        case tag::subscribe::text[0]:
            rc = detect(tag::subscribe(), name);
        break;
        }
    break;

    case tag::disconnect::text_size:
        rc = detect(tag::disconnect(), name);
    break;

    case tag::unsubscribe::text_size:
        rc = detect(tag::unsubscribe(), name);
    break;

    default:;
        rc = num_id::unknown;
    }

    return (rc) ? rc : num_id::unknown;
}

bool generic::valid() const noexcept
{
    auto id = num_id();
    return (num_id::none < id) && (id <= num_id::unsubscribe);
}

std::string_view generic::str() const noexcept
{
    using namespace tag;
    static constexpr std::string_view rc[] = {
        sv("none"),
        ack::text, nack::text, send::text, abort::text,
        begin::text, error::text, stomp::text, commit::text, connect::text,
        message::text, receipt::text, subscribe::text, connected::text,
        disconnect::text, unsubscribe::text,
        sv("unknown")
    };

    if (num_id_ >= num_id::unknown)
        return rc[num_id::unknown];

    return rc[num_id_];
}

} // namespace method

namespace header {
namespace tag {

content_type::content_type_id::type
    content_type::eval_content_type(std::string_view val) noexcept
{
    content_type_id::type rc = content_type_id::octet;
    switch (val.size())
    {
    case text_xml().size():
        if (eqstr<text_xml().size()>(text_xml().data(), val.data()))
            rc = content_type_id::xml;
        break;
    case text_html().size():
        if (eqstr<text_html().size()>(text_html().data(), val.data()))
            rc = content_type_id::html;
        break;
    case text_plain().size():
        if (eqstr<text_plain().size()>(text_plain().data(), val.data()))
            rc = content_type_id::html;
        break;
    case xml().size():
        if (eqstr<xml().size()>(xml().data(), val.data()))
            rc = content_type_id::xml;
        break;
    case json().size():
        if (eqstr<json().size()>(json().data(), val.data()))
            rc = content_type_id::json;
        break;
    default: ;
    }

    return rc;
}

} // namespace tag

std::size_t eval_header(std::string_view hdr) noexcept
{
    assert(!hdr.empty());

    std::size_t rc = num_id::none;
    auto name = hdr.data();

    switch (hdr.size())
    {
    case tag::id::text_size:
        rc = detect(tag::id(), name);
    break;

    case tag::ack::text_size:
        rc = detect(tag::ack(), name);
    break;

    case tag::host::text_size:
        switch (name[0])
        {
        case tag::host::text[0]:
            rc = detect(tag::host(), name);
        break;
        case tag::amqp_type::text[0]:
            rc = detect(tag::amqp_type(), name);
        break;
        }
    break;

    case tag::login::text_size:
        rc = detect(tag::login(), name);
    break;

    case tag::server::text_size:
        switch (name[0])
        {
        case tag::server::text[0]:
            rc = detect(tag::server(), name);
        break;
        case tag::app_id::text[0]:
            rc = detect(tag::app_id(), name);
        break;
        }
    break;

    case tag::receipt::text_size:
        switch (name[0])
        {
        case tag::receipt::text[0]:
            rc = detect(tag::receipt(), name);
        break;
        case tag::session::text[0]:
            rc = detect(tag::session(), name);
        break;
        case tag::version::text[0]:
            rc = detect(tag::version(), name);
        break;
        case tag::message::text[0]:
            rc = detect(tag::message(), name);
        break;
        case tag::durable::text[0]:
            rc = detect(tag::durable(), name);
        break;
        case tag::user_id::text[0]:
            rc = detect(tag::user_id(), name);
        break;
        }
    break;

    //01234567
    //reply_to
    //passcode
    //priority
    case tag::reply_to::text_size:
        switch (name[2])
        {
        case tag::reply_to::text[2]:
            rc = detect(tag::reply_to(), name);
        break;
        case tag::passcode::text[2]:
            rc = detect(tag::passcode(), name);
        break;
        case tag::priority::text[2]:
            rc = detect(tag::priority(), name);
        break;
        }
    break;

    //timestamp
    //x-expires
    case tag::expires::text_size:
        switch (name[0])
        {
        case tag::expires::text[0]:
            rc = detect(tag::expires(), name);
        break;
        case tag::timestamp::text[0]:
            rc = detect(tag::timestamp(), name);
        break;
        }
    break;

    case tag::message_id::text_size:
        switch (name[0])
        {
        case tag::message_id::text[0]:
            rc = detect(tag::message_id(), name);
        break;
        case tag::receipt_id::text[0]:
            rc = detect(tag::receipt_id(), name);
        break;
        case tag::heart_beat::text[0]:
            rc = detect(tag::heart_beat(), name);
        break;
        case tag::persistent::text[0]:
            rc = detect(tag::persistent(), name);
        break;
        case tag::cluster_id::text[0]:
            rc = detect(tag::cluster_id(), name);
        break;
        case tag::expiration::text[0]:
            rc = detect(tag::expiration(), name);
        break;
        }
    break;

    case tag::destination::text_size:
        switch (name[0])
        {
        case tag::destination::text[0]:
            rc = detect(tag::destination(), name);
        break;
        case tag::transaction::text[0]:
            rc = detect(tag::transaction(), name);
        break;
        case tag::redelivered::text[0]:
            rc = detect(tag::redelivered(), name);
        break;
        case tag::auto_delete::text[0]:
            rc = detect(tag::auto_delete(), name);
        break;
        }
    break;

    //0123456789
    //content_type
    //subscription
    //x-max-length
    //x-queue-name
    //x-queue-type
    case tag::content_type::text_size:
        if (name[0] == tag::content_type::text[0]) {
            rc = detect(tag::content_type(), name);
        } else {
            switch (name[9])
            {
            case tag::subscription::text[9]:
                rc = detect(tag::subscription(), name);
            break;  //x-max-length
            case tag::max_length::text[9]:
                rc = detect(tag::max_length(), name);
            break;  //x-queue-name
            case tag::queue_name::text[9]:
                rc = detect(tag::queue_name(), name);
            break;  //x-queue-type
            case tag::queue_type::text[9]:
                rc = detect(tag::queue_type(), name);
            break;
            }
        }
    break;

    //x-message-ttl
    //delivery_mode
    case tag::message_ttl::text_size:
        switch (name[0])
        {
        case tag::delivery_mode::text[0]:
            rc = detect(tag::delivery_mode(), name);
        break;
        case tag::message_ttl::text[0]:
            rc = detect(tag::message_ttl(), name);
        break;
        }
    break;

    // 0123456789
    // content-length
    // prefetch-count
    // x-max-priority
    // accept-version
    // correlation-id
    case tag::content_length::text_size:
        switch (name[2])
        {
        case tag::content_length::text[2]:
            rc = detect(tag::content_length(), name);
        break;
        case tag::prefetch_count::text[2]:
            rc = detect(tag::prefetch_count(), name);
        break;
        case tag::max_priority::text[2]:
            rc = detect(tag::max_priority(), name);
        break;
        case tag::accept_version::text[2]:
            rc = detect(tag::accept_version(), name);
        break;
        case tag::correlation_id::text[2]:
            rc = detect(tag::correlation_id(), name);
        break;
        }
    break;

    case tag::amqp_message_id::text_size:
        rc = detect(tag::amqp_message_id(), name);
    break;

    case tag::content_encoding::text_size:
        rc = detect(tag::content_encoding(), name);
    break;

                    //x-max-length-bytes
    case tag::max_length_bytes::text_size:
        rc = detect(tag::max_length_bytes(), name);
    break;

    case tag::original_exchange::text_size:
        rc = detect(tag::original_exchange(), name);
    break;

    case tag::dead_letter_exchange::text_size:
        rc = detect(tag::dead_letter_exchange(), name);
        if (!rc) {
            rc = detect(tag::original_routing_key(), name);
        }
    break;

    case tag::dead_letter_routing_key::text_size:
        rc = detect(tag::dead_letter_routing_key(), name);
    break;

    default: ;
    }

    return rc;
}

void generic::eval(std::string_view hdr) noexcept
{
    num_id_ = eval_header(hdr);
}

bool generic::valid() const noexcept
{
    auto id = num_id();
    return (num_id::none < id) && (id <= num_id::last_num_id);
}

std::string_view generic::str() const noexcept
{
    using namespace tag;

    static constexpr std::string_view rc[] = {
        sv("none"),
        content_length::text, content_type::text, accept_version::text,
        host::text, version::text, destination::text, id::text,
        transaction::text, message_id::text, subscription::text,
        receipt_id::text, login::text, passcode::text, heart_beat::text,
        session::text, server::text, ack::text, receipt::text, message::text,
        prefetch_count::text, durable::text, auto_delete::text,
        message_ttl::text, expires::text, max_length::text,
        max_length_bytes::text, dead_letter_exchange::text,
        dead_letter_routing_key::text, max_priority::text, persistent::text,
        reply_to::text, redelivered::text, original_exchange::text,
        original_routing_key::text, queue_name::text, queue_type::text,
        content_encoding::text, priority::text, correlation_id::text,
        expiration::text, amqp_message_id::text, timestamp::text,
        amqp_type::text, user_id::text, app_id::text, cluster_id::text,
        delivery_mode::text,
        sv("unknown")
    };

    if (num_id_ >= num_id::unknown)
        return rc[num_id::unknown];

    return rc[num_id_];
}


} // namespace header
} // namespace stomptalk
