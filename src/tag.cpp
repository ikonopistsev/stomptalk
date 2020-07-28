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
            return detect(val, tag::begin());
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
                    return detect(hdr, tag::message());
                }
            }
        }
        return rc;
    }
    case size_of(tag::passcode()):
        return detect(hdr, tag::passcode());
    case size_of(tag::message_id()): {
        auto rc = detect(hdr, tag::receipt_id());
        if (!rc) {
            rc = detect(hdr, tag::message_id());
            if (!rc) {
                return detect(hdr, tag::heart_beat());
            }
        }
        return rc;
    }
    case size_of(tag::destination()): {
        auto rc = detect(hdr, tag::destination());
        if (!rc) {
            return detect(hdr, tag::transaction());
        }
        return rc;
    }
    case size_of(tag::content_type()): {
        auto rc = detect(hdr, tag::content_type());
        if (!rc) {
            return detect(hdr, tag::subscription());
        }
        return rc;
    }
    case size_of(tag::content_length()): {
        auto rc = detect(hdr, tag::content_length());
        if (!rc) {
            return detect(hdr, tag::accept_version());
        }
        return rc;
    }
    default: ;
    }

    return num_id::none;
}

bool generic::valid() const noexcept
{
    auto id = num_id();
    return (num_id::none < id) && (id <= num_id::last_type_id);
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
    case ack::num:
        return ack::name();
    case receipt::num:
        return receipt::name();
    default: ;
    }

    return make_ref("unknown");
}


} // namespace header
} // namespace stomptalk
