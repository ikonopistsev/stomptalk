#pragma once

#include "stomptalk/header_store.hpp"

namespace stomptalk {

// base interface of stomplay
class stomplay_hook
{
public:
    using error_type = std::size_t;

    struct error
    {
        enum type
        {
            none,
            failure,
            bad_request,
            accept_version,
            client_only,
            server_only,
            unimplemented,
            method_unknown,
            unknown
        };
    };

    using mode_type = std::size_t;
    struct mode
    {
        enum type
            : mode_type
        {
            client,
            server
        };
    };

protected:
    mode_type mode_{ mode::client };

public:
    // default client mode
    stomplay_hook() = default;

    virtual ~stomplay_hook() = default;

    stomplay_hook(mode::type mode) noexcept
        : mode_(mode)
    {   }

    // make a decision about processing of known method
    virtual error_type on_method(std::size_t num) noexcept;

    // make a decision about processing of unknown method
    virtual error_type on_unknown(std::string_view)
    {
        return error::unimplemented;
    }

    // receive data of unknown method
    virtual error_type on_unknown(const header_store&,
        const void*, std::size_t)
    {
        return error::unimplemented;
    }

    // server frames (parse by client)
    virtual error_type on_connected_verify(const header_store& hdr) noexcept
    {
        constexpr auto v12 = header::tag::accept_version::v12();
        auto version = hdr.get(header::tag::version());
        if (version != v12)
            return error::accept_version;

        return error::none;
    }

    virtual error_type on_connected(const header_store&) noexcept
    {
        return mode_ == mode::client ?
            error::unimplemented : error::client_only;
    }

    virtual error_type on_message_verify(const header_store& hdr) noexcept
    {
        // The MESSAGE frame MUST include a destination header
        auto destination = hdr.get(header::tag::destination());
        if (destination.empty())
            return error::bad_request;

        // The MESSAGE frame MUST also contain a message-id and
        // a subscription header
        auto subscription = hdr.get(header::tag::subscription());
        if (subscription.empty())
            return error::bad_request;

        auto message_id = hdr.get(header::tag::message_id());
        if (message_id.empty())
            return error::bad_request;

        return error::none;
    }

    virtual error_type on_message(const header_store&,
        const void*, std::size_t) noexcept
    {
        return mode_ == mode::client ?
            error::unimplemented : error::client_only;
    }

    virtual error_type on_receipt_verify(const header_store& hdr) noexcept
    {
        auto receipt_id = hdr.get(header::tag::receipt_id());
        return (receipt_id.empty()) ? error::bad_request : error::none;
    }

    virtual error_type on_receipt(const header_store&) noexcept
    {
        return mode_ == mode::client ?
            error::unimplemented : error::client_only;
    }

    virtual error_type on_error(const header_store&,
        const void*, std::size_t) noexcept
    {
        return error::unimplemented;
    }

    // client frames
    virtual error_type on_connect(const header_store&) noexcept
    {
        return mode_ == mode::server ?
            error::unimplemented : error::server_only;
    }

    virtual error_type on_send_verify(const header_store& hdr) noexcept
    {
        // It has one REQUIRED header, destination
        auto destination = hdr.get(header::tag::destination());
        if (destination.empty())
            return error::bad_request;

        return error::none;
    }

    virtual error_type on_send(const header_store&,
        const void*, std::size_t) noexcept
    {
        return mode_ == mode::server ?
            error::unimplemented : error::server_only;
    }

    virtual error_type on_subscribe(const header_store&) noexcept
    {
        return mode_ == mode::server ?
            error::unimplemented : error::server_only;
    }

    virtual error_type on_unsubscribe(const header_store&) noexcept
    {
        return mode_ == mode::server ?
            error::unimplemented : error::server_only;
    }

    virtual void on_frame(error_type, std::string_view) noexcept
    {   }

public:
    static std::string_view error_str(error_type) noexcept;
};

} // namespace stompconn
