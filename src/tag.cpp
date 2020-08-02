#include "stomptalk/tag.hpp"

namespace stomptalk {
namespace method {

std::size_t eval_stom_method(std::string_view val) noexcept
{
    switch (val.size())
    {
    case size_of(tag::ack()):
        return detect(val, tag::ack());

    case size_of(tag::nack()): {
        auto rc = detect(val, tag::send());
        if (!rc) {
            return detect(val, tag::nack());
        }
        return rc;
    }

    case size_of(tag::abort()): {
        auto rc = detect(val, tag::abort());
        if (!rc) {
            rc = detect(val, tag::begin());
            if (!rc) {
                return detect(val, tag::error());
            }
        }
        return rc;
    }
    case size_of(tag::commit()):
        return detect(val, tag::commit());

    case size_of(tag::message()): {
        auto rc = detect(val, tag::message());
        if (!rc) {
            rc = detect(val, tag::receipt());
            if (!rc) {
                return detect(val, tag::connect());
            }
        }
        return rc;
    }

    case size_of(tag::connected()): {
        auto rc = detect(val, tag::connected());
        if (!rc) {
            return detect(val, tag::subscribe());
        }
        return rc;
    }

    case size_of(tag::disconnect()):
        return detect(val, tag::disconnect());

    case size_of(tag::unsubscribe()):
        return detect(val, tag::unsubscribe());

    default:;
    }

    return num_id::none;
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

std::size_t eval_stomp_header(std::string_view hdr) noexcept
{
    switch (hdr.size())
    {
    case size_of(tag::id()):
        return detect(hdr, tag::id());

    case size_of(tag::ack()):
        return detect(hdr, tag::ack());

    case size_of(tag::host()):
        return detect(hdr, tag::host());

    case size_of(tag::login()):
        return detect(hdr, tag::login());

    case size_of(tag::server()):
        return detect(hdr, tag::server());

    case size_of(tag::receipt()): {
        auto rc = detect(hdr, tag::receipt());
        if (!rc) {
            rc = detect(hdr, tag::session());
            if (!rc) {
                rc = detect(hdr, tag::version());
                if (!rc) {
                    rc = detect(hdr, tag::message());
                    if (!rc) {
                        rc = detect(hdr, tag::durable());
                        if (!rc) {
                            return detect(hdr, tag::expires());
                        }
                    }
                }
            }
        }
        return rc;
    }

    case size_of(tag::reply_to()): {
        auto rc= detect(hdr, tag::reply_to());
        if (!rc) {
            return detect(hdr, tag::passcode());
        }
        return rc;
    }

    case size_of(tag::message_id()): {
        auto rc = detect(hdr, tag::receipt_id());
        if (!rc) {
            rc = detect(hdr, tag::message_id());
            if (!rc) {
                rc = detect(hdr, tag::heart_beat());
                if (!rc) {
                    return detect(hdr, tag::persistent());
                }
            }
        }
        return rc;
    }

    case size_of(tag::destination()): {
        auto rc = detect(hdr, tag::destination());
        if (!rc) {
            rc = detect(hdr, tag::transaction());
            if (!rc) {
                rc = detect(hdr, tag::redelivered());
                if (!rc) {
                    return detect(hdr, tag::auto_delete());
                }
            }
        }
        return rc;
    }
                    //x-max-length
    case size_of(tag::content_type()): {
        auto rc = detect(hdr, tag::content_type());
        if (!rc) {
            return detect(hdr, tag::subscription());
        }
        return rc;
    }

    case size_of(tag::message_ttl()):
        return detect(hdr, tag::message_ttl());
                    //x-message-ttl
    case size_of(tag::content_length()): {
        auto rc = detect(hdr, tag::content_length());
        if (!rc) {
            rc = detect(hdr, tag::prefetch_count());
            if (!rc) {
                rc = detect(hdr, tag::max_priority());
                if (!rc) {
                    rc = detect(hdr, tag::accept_version());
                    if (!rc) {
                        return detect(hdr, tag::max_length());
                    }
                }
            }
        }
        return rc;
    }

    case size_of(tag::max_length_bytes()):
        return detect(hdr, tag::max_length_bytes());

    case size_of(tag::original_exchange()):
        return detect(hdr, tag::original_exchange());

    case size_of(tag::dead_letter_exchange()): {
        auto rc = detect(hdr, tag::dead_letter_exchange());
        if (!rc) {
            return detect(hdr, tag::original_routing_key());
        }
        return rc;
    }

    case size_of(tag::dead_letter_routing_key()):
        return detect(hdr, tag::dead_letter_routing_key());

    default: ;
    }

    return num_id::none;
}

void generic::eval(std::string_view hdr) noexcept
{
    num_id_ = eval_stomp_header(hdr);
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
    default: ;
    }

    return make_ref("unknown");
}


} // namespace header
} // namespace stomptalk
