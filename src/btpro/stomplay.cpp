#include "stomptalk/btpro/stomplay.hpp"
#include "stomptalk/antoull.hpp"

using namespace stomptalk::tcp;

void stomplay::on_frame(parser_hook&) noexcept
{
    method_.set(method::num_id::none);
    header_.set(header::num_id::none);
    current_header_.clear();
    content_type_ = content_type_id::none;
    header_store_.clear();
    recv_.reset(btpro::buffer());
}

void stomplay::on_method(parser_hook& hook,
    std::string_view method) noexcept
{
    try
    {
        method_.set(method::eval_stom_method(method));
        if (method_.valid())
            return;

        std::cerr << "stomplay method: " << method << " unknown" << std::endl;
    }
    catch (const std::exception& e)
    {
        std::cerr << "stomplay method: " << e.what() << std::endl;
    }
    catch (...)
    {
        std::cerr << "stomplay method: " << method << " error" << std::endl;
    }

    hook.next_frame();
}

void stomplay::on_hdr_key(parser_hook& hook, std::string_view text) noexcept
{
    try
    {
        current_header_.assign(text);
        header_.eval(text);
        return;
    }
    catch (const std::exception& e)
    {
        std::cerr << "stomplay method: " << e.what() << std::endl;
    }
    catch (...)
    {
        std::cerr << "stomplay header: " << text << " error" << std::endl;
    }

    hook.next_frame();
}

void stomplay::on_hdr_val(parser_hook& hook, std::string_view val) noexcept
{
    auto num_id = header_.num_id();
    if (num_id != header::num_id::none)
        header_store_.set(num_id, current_header_, val);
    else
        header_store_.set(current_header_, val);

    switch (num_id)
    {
    case header::tag::content_length::num: {
        auto content_len = antoull(val);
        if (content_len > 0ll)
            hook.set(static_cast<std::uint64_t>(content_len));
        else
        {
            std::cerr << "stomplay content_length: invalid size" << std::endl;
            hook.next_frame();
        }
        break;
    }
    case header::tag::content_type::num:
        content_type_ = header::tag::content_type::eval_content_type(val);
        break;

    default: ;
    }
}

void stomplay::on_body(parser_hook& hook,
                     const void* data, std::size_t size) noexcept
{
    try
    {
        recv_.append(data, size);
        return;
    }
    catch (const std::exception& e)
    {
        std::cerr << "stomplay body: " << e.what() << std::endl;
    }
    catch (...)
    {
        std::cerr << "on_body" << std::endl;
    }

    hook.next_frame();
}

void stomplay::on_frame_end(parser_hook&) noexcept
{
    switch (method_.num_id())
    {
    case method::num_id::connected:
        exec_on_logon();
        break;

    case method::num_id::message: {
        auto subs = header_store_.get(stomptalk::header::subscription());
        if (!subs.empty())
            exec_on_message(subs);
        break;
    }

    case method::num_id::receipt: {
        auto id = header_store_.get(stomptalk::header::receipt_id());
        if (!id.empty())
            exec_on_receipt(id);
        break;
    }

    case method::num_id::error:
        exec_on_error();
        break;
    }
}

void stomplay::exec_on_error() noexcept
{
    try
    {
        if (!logon_)
            on_logon_fn_(packet(header_store_, method_, std::move(recv_)));
        else
        {
            auto subs = header_store_.get(stomptalk::header::subscription());
            if (!subs.empty())
                exec_on_receipt(subs);

            auto id = header_store_.get(stomptalk::header::receipt_id());
            if (!id.empty())
                exec_on_receipt(id);
        }
    }
    catch (...)
    {   }
}

void stomplay::exec_on_logon() noexcept
{
    try
    {
        logon_ = true;
        on_logon_fn_(packet(header_store_, method_, std::move(recv_)));
    }
    catch (const std::exception& e)
    {
        std::cerr << e.what() << std::endl;
    }
    catch (...)
    {
        std::cerr << "exec_on_logon" << std::endl;
    }
}

void stomplay::exec_on_receipt(std::string_view id) noexcept
{
    try
    {
        handler_.on_recepit(std::string(id),
            packet(header_store_, method_, std::move(recv_)));
    }
    catch (const std::exception& e)
    {
        std::cerr << e.what() << std::endl;
    }
    catch (...)
    {
        std::cerr << "exec_on_receipt" << std::endl;
    }
}

void stomplay::exec_on_message(std::string_view id) noexcept
{
    try
    {
        handler_.on_message(std::string(id),
            packet(header_store_, method_, std::move(recv_)));
    }
    catch (const std::exception& e)
    {
        std::cerr << e.what() << std::endl;
    }
    catch (...)
    {
        std::cerr << "exec_on_message" << std::endl;
    }
}

void stomplay::add_handler(const std::string& id, fun_type fn)
{
    handler_.create(id, std::move(fn));
}
