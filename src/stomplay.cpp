#include "stomptalk/stomplay.hpp"
#include "stomptalk/antoull.hpp"

using namespace stomptalk;
using namespace std::literals;

stomplay::stomplay(stomplay_hook& hook) noexcept
    : hook_(hook)
{   }

void stomplay::on_frame(stomptalk::parser_hook& hook,
                        const char*) noexcept
{
    try
    {
        clear();
    }
    catch (const std::exception& e)
    {
        hook_.on_frame(stomplay_hook::error::failure, e.what());
        hook.generic_error();
    }
    catch (...)
    {
        hook_.on_frame(stomplay_hook::error::failure, "begin frame"sv);
        hook.generic_error();
    }
}

void stomplay::on_method(stomptalk::parser_hook& hook,
    std::string_view method) noexcept
{
    try
    {
        auto method_id = stomptalk::method::eval_stom_method(method);
        method_.set(method_id);

        auto rc = (method_id == stomptalk::method::num_id::unknown) ?
            hook_.on_unknown(method) : hook_.on_method(method_id);

        if (rc)
        {
            hook_.on_frame(rc, stomplay_hook::error_str(rc));
            hook.next_frame();
        }
    }
    catch (const std::exception& e)
    {
        hook_.on_frame(stomplay_hook::error::failure, e.what());
        hook.generic_error();
    }
    catch (...)
    {
        hook_.on_frame(stomplay_hook::error::failure, "method"sv);
        hook.generic_error();
    }
}

void stomplay::on_hdr_key(stomptalk::parser_hook& hook,
    std::string_view text) noexcept
{
    try
    {
        current_header_ = text;
        header_.eval(text);
    }
    catch (const std::exception& e)
    {
        hook_.on_frame(stomplay_hook::error::failure, e.what());
        hook.generic_error();
    }
    catch (...)
    {
        hook_.on_frame(stomplay_hook::error::failure, "header key"sv);
        hook.generic_error();
    }
}

void stomplay::on_hdr_val(stomptalk::parser_hook& hook,
    std::string_view val) noexcept
{
    try
    {
        using namespace stomptalk::header;
        auto num_id = header_.num_id();
        if (num_id != num_id::none)
        {
            header_store_.set(num_id,
                header_.hash(), sv(current_header_), val);
        }
        else
            header_store_.set(sv(current_header_), val);
    }
    catch (const std::exception& e)
    {
        hook_.on_frame(stomplay_hook::error::failure, e.what());
        hook.generic_error();
    }
    catch (...)
    {
        hook_.on_frame(stomplay_hook::error::failure, "header value"sv);
        hook.generic_error();
    }
}

void stomplay::on_body(stomptalk::parser_hook& hook,
    const void* data, std::size_t size) noexcept
{
    try
    {
        using namespace stomptalk::method;

        content_length_ += size;

        stomplay_hook::error_type rc = stomplay_hook::error::bad_request;
        switch (method_.num_id())
        {
        case num_id::send:
            // check need of message verify
            if (verify_ & verify::send)
            {
                verify_ |= verify::send;
                rc = hook_.on_send_verify(header_store_);
            }
            if (!rc)
                rc = hook_.on_send(header_store_, data, size);
            break;
        case num_id::error:
            rc = hook_.on_error(header_store_, data, size);
            break;
        case num_id::message:
            // check need of message verify
            if (verify_ & verify::message)
            {
                verify_ |= verify::message;
                rc = hook_.on_message_verify(header_store_);
            }
            if (!rc)
                rc = hook_.on_message(header_store_, data, size);
            break;
        case num_id::unknown:
            rc = hook_.on_unknown(header_store_, data, size);
            break;
        }

        if (rc)
        {
            hook_.on_frame(rc, hook_.error_str(rc));
            parser_.next_frame();
        }
    }
    catch (const std::exception& e)
    {
        hook_.on_frame(stomplay_hook::error::failure, e.what());
        hook.generic_error();
    }
    catch (...)
    {
        hook_.on_frame(stomplay_hook::error::failure, "frame body");
        hook.generic_error();
    }
}

void stomplay::on_frame_end(stomptalk::parser_hook&, const char*) noexcept
{
    using namespace method;

    stomplay_hook::error_type rc = stomplay_hook::error::none;
    switch (method_.num_id())
    {
    case num_id::ack:
        break;
    case num_id::nack:
        break;
    case num_id::abort:
        break;
    case num_id::begin:
        break;
    case num_id::stomp:
        break;
    case num_id::commit:
        break;
    case num_id::connect:
        rc = hook_.on_connect(header_store_);
        break;
    case num_id::receipt:
        rc = hook_.on_receipt_verify(header_store_);
        if (!rc)
            hook_.on_receipt(header_store_);
        break;
    case num_id::subscribe:
        break;
    case num_id::connected:
        rc = hook_.on_connected_verify(header_store_);
        if (!rc)
            hook_.on_connected(header_store_);
        break;
    case num_id::disconnect:
        break;
    case num_id::send:
        if (!content_length_)
        {
            // check need of message verify
            if (verify_ & verify::send)
            {
                verify_ |= verify::send;
                rc = hook_.on_send_verify(header_store_);
            }
            if (!rc)
                rc = hook_.on_send(header_store_, nullptr, 0);
        }
        break;
    case num_id::error:
        if (!content_length_)
            rc = hook_.on_error(header_store_, nullptr, 0);
        break;
    case num_id::message:
        if (!content_length_)
        {
            // check need of message verify
            if (verify_ & verify::message)
            {
                verify_ |= verify::message;
                rc = hook_.on_message_verify(header_store_);
            }
            if (!rc)
                hook_.on_message(header_store_, nullptr, 0);
        }
        break;
    case num_id::unknown:
        if (!content_length_)
            rc = hook_.on_unknown(header_store_, nullptr, 0);
        break;
    default:;
        rc = stomplay_hook::error::bad_request;
    }

    hook_.on_frame(rc, hook_.error_str(rc));
}

void stomplay::clear()
{
    method_.reset();
    header_.reset();
    current_header_.clear();
    header_store_.clear();
    content_length_ = 0;
    verify_ = verify::message|verify::send;
}
