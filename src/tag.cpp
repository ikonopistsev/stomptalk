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
    case size_of(tag::ack()):
        rc = detect(name, tag::ack());
    break;

    case size_of(tag::nack()):
        switch (name[0])
        {
        case tag::send::letter():
            rc = detect(name, tag::send());
        break;
        case tag::nack::letter():
            rc = detect(name, tag::nack());
        break;
        }
    break;

    case size_of(tag::abort()):
        switch (name[0])
        {
        case tag::abort::letter():
            rc = detect(name, tag::abort());
        break;
        case tag::begin::letter():
            rc = detect(name, tag::begin());
        break;
        case tag::error::letter():
            rc = detect(name, tag::error());
        break;
        case tag::stomp::letter():
            rc = detect(name, tag::stomp());
        break;
        }
    break;

    case size_of(tag::commit()):
        rc = detect(val, tag::commit());
    break;

    case size_of(tag::message()):
        switch (name[0])
        {
        case tag::message::letter():
            rc = detect(name, tag::message());
        break;
        case tag::receipt::letter():
            rc = detect(name, tag::receipt());
        break;
        case tag::connect::letter():
            rc = detect(name, tag::connect());
        break;
        }
    break;

    case size_of(tag::connected()):
        switch (name[0])
        {
        case tag::connected::letter():
            rc = detect(name, tag::connected());
        break;
        case tag::subscribe::letter():
            rc = detect(name, tag::subscribe());
        break;
        }
    break;

    case size_of(tag::disconnect()):
        rc = detect(val, tag::disconnect());
    break;

    case size_of(tag::unsubscribe()):
        rc = detect(val, tag::unsubscribe());
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

    switch (num_id_)
    {
    case num_id::none:
        return make_ref("none");
    case ack::num:
        return ack::name();
    case nack::num:
        return nack::name();
    case send::num:
        return send::name();
    case abort::num:
        return abort::name();
    case begin::num:
        return begin::name();
    case error::num:
        return error::name();
    case stomp::num:
        return stomp::name();
    case commit::num:
        return commit::name();
    case connect::num:
        return connect::name();
    case message::num:
        return message::name();
    case receipt::num:
        return receipt::name();
    case subscribe::num:
        return subscribe::name();
    case connected::num:
        return connected::name();
    case disconnect::num:
        return disconnect::name();
    case unsubscribe::num:
        return unsubscribe::name();
    default: ;
    }

    return make_ref("unknown");
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
    case size_of(text_xml()):
        if (eqstr(text_xml(), val))
            rc = content_type_id::xml;
        break;
    case size_of(text_html()):
        if (eqstr(text_html(), val))
            rc = content_type_id::html;
        break;
    case size_of(text_plain()):
        if (eqstr(text_plain(), val))
            rc = content_type_id::html;
        break;
    case size_of(xml()):
        if (eqstr(xml(), val))
            rc = content_type_id::xml;
        break;
    case size_of(json()):
        if (eqstr(json(), val))
            rc = content_type_id::json;
        break;
    case size_of(octet()):
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
    case size_of(tag::id()):
        rc = detect(name, tag::id());
    break;

    case size_of(tag::ack()):
        rc = detect(name, tag::ack());
    break;

    case size_of(tag::host()):
        switch (name[0])
        {
        case tag::host::letter():
            rc = detect(name, tag::host());
        break;
        case tag::amqp_type::letter():
            rc = detect(name, tag::amqp_type());
        break;
        }
    break;

    case size_of(tag::login()):
        rc = detect(name, tag::login());
    break;

    case size_of(tag::server()):
        switch (name[0])
        {
        case tag::server::letter():
            rc = detect(name, tag::server());
        break;
        case tag::app_id::letter():
            rc = detect(name, tag::app_id());
        break;
        }
    break;
    case size_of(tag::receipt()):
        switch (name[0])
        {
        case tag::receipt::letter():
            rc = detect(name, tag::receipt());
        break;
        case tag::session::letter():
            rc = detect(name, tag::session());
        break;
        case tag::version::letter():
            rc = detect(name, tag::version());
        break;
        case tag::message::letter():
            rc = detect(name, tag::message());
        break;
        case tag::durable::letter():
            rc = detect(name, tag::durable());
        break;
        case tag::user_id::letter():
            rc = detect(name, tag::user_id());
        break;
        }
    break;

    //01234567
    //reply_to
    //passcode
    //priority
    case size_of(tag::reply_to()):
        switch (name[2])
        {
        case tag::reply_to::letter(2):
            rc = detect(name, tag::reply_to());
        break;
        case tag::passcode::letter(2):
            rc = detect(name, tag::passcode());
        break;
        case tag::priority::letter(2):
            rc = detect(name, tag::priority());
        break;
        }
    break;

    //timestamp
    //x-expires
    case size_of(tag::expires()):
        switch (name[0])
        {
        case tag::expires::letter():
            rc = detect(name, tag::expires());
        break;
        case tag::timestamp::letter():
            rc = detect(name, tag::timestamp());
        break;
        }
    break;

    case size_of(tag::message_id()):
        switch (name[0])
        {
        case tag::message_id::letter():
            rc = detect(name, tag::message_id());
        break;
        case tag::receipt_id::letter():
            rc = detect(name, tag::receipt_id());
        break;
        case tag::heart_beat::letter():
            rc = detect(name, tag::heart_beat());
        break;
        case tag::persistent::letter():
            rc = detect(name, tag::persistent());
        break;
        case tag::cluster_id::letter():
          rc = detect(name, tag::cluster_id());
        break;
        case tag::expiration::letter():
          rc = detect(name, tag::expiration());
        break;
        }
    break;

    case size_of(tag::destination()):
        switch (name[0])
        {
        case tag::destination::letter():
            rc = detect(name, tag::destination());
        break;
        case tag::transaction::letter():
            rc = detect(name, tag::transaction());
        break;
        case tag::redelivered::letter():
            rc = detect(name, tag::redelivered());
        break;
        case tag::auto_delete::letter():
            rc = detect(name, tag::auto_delete());
        break;
        }
    break;

    //0123456789
    //content_type
    //subscription
    //x-max-length
    //x-queue-name
    //x-queue-type
    case size_of(tag::content_type()):
        if (name[0] == tag::content_type::letter()) {
            rc = detect(name, tag::content_type());
        } else {
            switch (name[9])
            {
            case tag::subscription::letter(9):
                rc = detect(name, tag::subscription());
            break;  //x-max-length
            case tag::max_length::letter(9):
                rc = detect(name, tag::max_length());
            break;  //x-queue-name
            case tag::queue_name::letter(9):
                rc = detect(name, tag::queue_name());
            break;  //x-queue-type
            case tag::queue_type::letter(9):
                rc = detect(name, tag::queue_type());
            break;
            }
        }
    break;
                    //x-message-ttl
    case size_of(tag::message_ttl()):
        rc = detect(name, tag::message_ttl());
    break;

    // 0123456789
    // content-length
    // prefetch-count
    // x-max-priority
    // accept-version
    // correlation-id
    case size_of(tag::content_length()):
        switch (name[2])
        {
        case tag::content_length::letter(2):
            rc = detect(name, tag::content_length());
        break;
        case tag::prefetch_count::letter(2):
            rc = detect(name, tag::prefetch_count());
        break;
        case tag::max_priority::letter(2):
            rc = detect(name, tag::max_priority());
        break;
        case tag::accept_version::letter(2):
            rc = detect(name, tag::accept_version());
        break;
        case tag::correlation_id::letter(2):
            rc = detect(name, tag::correlation_id());
        break;
        }
    break;

    case size_of(tag::amqp_message_id()):
        rc = detect(name, tag::amqp_message_id());
    break;

    case size_of(tag::content_encoding()):
        rc = detect(name, tag::content_encoding());
    break;

                    //x-max-length-bytes
    case size_of(tag::max_length_bytes()):
        rc = detect(name, tag::max_length_bytes());
    break;

    case size_of(tag::original_exchange()):
        rc = detect(name, tag::original_exchange());
    break;

    case size_of(tag::dead_letter_exchange()):
        rc = detect(hdr, tag::dead_letter_exchange());
        if (!rc) {
            rc = detect(name, tag::original_routing_key());
        }
    break;

    case size_of(tag::dead_letter_routing_key()):
        rc = detect(name, tag::dead_letter_routing_key());
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

    switch (num_id_)
    {
    case num_id::none:
        return make_ref("none");
    case content_length::num:
        return content_length::name();
    case content_type::num:
        return content_length::name();
    case accept_version::num:
        return accept_version::name();
    case host::num:
        return host::name();
    case version::num:
        return version::name();
    case destination::num:
        return destination::name();
    case id::num:
        return id::name();
    case message_id::num:
        return message_id::name();
    case subscription::num:
        return subscription::name();
    case receipt_id::num:
        return receipt_id::name();
    case login::num:
        return login::name();
    case passcode::num:
        return passcode::name();
    case heart_beat::num:
        return heart_beat::name();
    case session::num:
        return session::name();
    case server::num:
        return server::name();
    case ack::num:
        return ack::name();
    case receipt::num:
        return receipt::name();
    case message::num:
        return message::name();
    case prefetch_count::num:
        return prefetch_count::name();
    case durable::num:
        return durable::name();
    case auto_delete::num:
        return auto_delete::name();
    case message_ttl::num:
        return message_ttl::name();
    case expires::num:
        return expires::name();
    case max_length::num:
        return max_length::name();
    case max_length_bytes::num:
        return max_length_bytes::name();
    case dead_letter_exchange::num:
        return dead_letter_exchange::name();
    case dead_letter_routing_key::num:
        return dead_letter_routing_key::name();
    case max_priority::num:
        return max_priority::name();
    case persistent::num:
        return persistent::name();
    case reply_to::num:
        return reply_to::name();
    case redelivered::num:
        return redelivered::name();
    case original_exchange::num:
        return original_exchange::name();
    case original_routing_key::num:
        return original_routing_key::name();
    case queue_name::num:
        return queue_name::name();
    case queue_type::num:
        return queue_type::name();
    case content_encoding::num:
        return content_encoding::name();
    case priority::num:
        return priority::name();
    case correlation_id::num:
        return correlation_id::name();
    case expiration::num:
        return expiration::name();
    case amqp_message_id::num:
        return amqp_message_id::name();
    case timestamp::num:
        return timestamp::name();
    case amqp_type::num:
        return amqp_type::name();
    case user_id::num:
        return user_id::name();
    case app_id::num:
        return app_id::name();
    case cluster_id::num:
        return cluster_id::name();

    default: ;
    }

    return make_ref("unknown");
}


} // namespace header
} // namespace stomptalk
