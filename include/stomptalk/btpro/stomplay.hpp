#pragma once

#include "stomptalk/parser.hpp"
#include "stomptalk/hook_base.hpp"
#include "stomptalk/rabbitmq.hpp"
#include "stomptalk/btpro/frame.hpp"
#include "stomptalk/btpro/subs_pool.hpp"
#include "stomptalk/btpro/receipt_pool.hpp"
#include "stomptalk/header_store.hpp"
#include "stomptalk/antoull.hpp"

#include <array>

namespace stomptalk {
namespace tcp {

class stomplay final
    : public stomptalk::hook_base
{
public:
    typedef header::tag::content_type::content_type_id content_type_id;
    typedef std::function<void()> fun_type;

private:
    stomptalk::parser stomp_{};
    stomptalk::parser_hook hook_{*this};
    rabbitmq::header_store header_store_{};

    method::generic method_{};
    rabbitmq::header header_{};
    std::string current_header_{};
    content_type_id::type content_type_{content_type_id::none};

    btpro::buffer recv_{};
    tcp::logon::fn_type on_logon_fn_{};
    receipt_pool receipt_{};
    subs_pool subs_{};

    virtual void on_frame(parser_hook&) noexcept override
    {
        method_.set(method::num_id::none);
        header_.set(rabbitmq::num_id::none);
        current_header_.clear();
        content_type_ = content_type_id::none;
        header_store_.clear();
        btpro::buffer clear;
        recv_ = std::move(clear);
    }

    virtual void on_method(parser_hook& hook,
        std::string_view method) noexcept override
    {
        try
        {
            method_.set(method::eval_stom_method(method));
            if (method_.valid())
                return;
            std::cerr << "stomplay method: " << method << " unknown" << std::endl;
        }
        catch (...)
        {
            std::cerr << "stomplay method: " << method << " error" << std::endl;
        }

        hook.next_frame();
    }

    virtual void on_hdr_key(parser_hook& hook, std::string_view text) noexcept override
    {
        try
        {
            current_header_.assign(text);
            header_.set(rabbitmq::eval_rabbitmq_header(text));
            return;
        }
        catch (...)
        {
            std::cerr << "stomplay header: " << text << " error" << std::endl;
        }

        hook.next_frame();
    }

    virtual void on_hdr_val(parser_hook& hook, std::string_view val) noexcept override
    {
        std::string value(val.data(), val.size());
        auto num_id = header_.num_id();
        if (num_id != rabbitmq::num_id::none)
        {
            header_store_.set(num_id,
                std::move(current_header_), std::move(value));
        }
        else
            header_store_.set(std::move(current_header_), std::move(value));

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

    virtual void on_body(parser_hook& hook,
                         const void* data, std::size_t size) noexcept override
    {
        try
        {
            recv_.append(data, size);
        }
        catch (const std::exception& e)
        {
            std::cerr << "stomplay body: " << e.what() << std::endl;
            hook.next_frame();
        }
    }

    virtual void on_frame_end(parser_hook&) noexcept override
    {
        switch (method_.num_id())
        {
        case method::num_id::connected:
            on_logon_fn_(header_store_);
            break;
        case method::num_id::message:
            exec_on_message();
            break;
        case method::num_id::receipt:
            exec_on_receipt();
            break;
        case method::num_id::error:
            break;
        }
    }

    void exec_on_receipt() noexcept
    {
        try
        {
            auto receipt_id = header_store_.get(stomptalk::header::receipt_id());
            if (!receipt_id.empty())
                receipt_.on_recepit(receipt_id, header_store_);
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

        void exec_on_message() noexcept
        {
            try
            {
                auto subs = header_store_.get(stomptalk::header::subscription());
                subs_.on_message(subs, std::move(recv_), header_store_);
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

public:
    stomplay() = default;

    std::size_t parse(const char* ptr, std::size_t size)
    {
        return stomp_.run(hook_, ptr, size);
    }

    void on_logon(tcp::logon::fn_type fn)
    {
        on_logon_fn_ = std::move(fn);
    }

    void add_receipt(const std::string& id, receipt_pool::fn_type fn)
    {
        receipt_.create(id, std::move(fn));
    }

    void add_subscribe(const std::string& id, subs_pool::fn_type fn)
    {
        subs_.create(id, std::move(fn));
    }
};

} // namespace tcp
} // namespace stomptalk

