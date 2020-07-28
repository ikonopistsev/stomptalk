#pragma once

#include "stomptalk/parser.hpp"
#include "stomptalk/hook_base.hpp"
#include "stomptalk/rabbitmq.hpp"
#include "stomptalk/btpro/subs_pool.hpp"
#include "stomptalk/btpro/receipt_pool.hpp"
#include "stomptalk/header_arr.hpp"
#include "stomptalk/antoull.hpp"

#include <array>

namespace stomptalk {
namespace tcp {

class stomplay final
    : public stomptalk::hook_base
{
public:
    typedef header::tag::content_type::content_type_id content_type_id;

private:
    stomptalk::parser stomp_{};

    stomptalk::parser_hook hook_{*this};

    method::generic method_{};

    rabbitmq::rabbitmq_header header_{};

    content_type_id::type content_type_{content_type_id::none};

    rabbitmq::header_arr hdrarr_{};
    std::string unknown_header_{};

    std::size_t parse(const char* ptr, std::size_t size)
    {
        return stomp_.run(hook_, ptr, size);
    }

    virtual void on_frame(parser_hook&) noexcept override
    {
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
        }  catch (...) {
            std::cerr << "stomplay method: " << method << " error" << std::endl;
        }

        hook.next_frame();
    }

    virtual void on_hdr_key(parser_hook& hook, std::string_view text) noexcept override
    {
        try
        {
            header_.set(rabbitmq::eval_rabbitmq_header(text));

            if (!header_.valid())
            {
                unknown_header_ = text;
                std::cerr << "stomplay header: " << text << " unknown" << std::endl;
            }

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
        auto num_id = header_.num_id();
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

    virtual void on_body(parser_hook&,
                         const void* data, std::size_t sz) noexcept override
    {

    }

    virtual void on_frame_end(parser_hook&) noexcept override
    {

    }

    static inline std::string startup_time() noexcept
    {
        using namespace std::chrono;
        auto t = system_clock::now();
        auto c = duration_cast<milliseconds>(t.time_since_epoch()).count();
        return std::to_string(c);
    }

    static inline std::string create_id(const std::string& tail) noexcept
    {
        static const auto time_const = startup_time();
        std::hash<std::string> hf;
        std::string rc;
        rc.reserve(40);
        rc += std::to_string(hf(std::to_string(std::rand()) + time_const));
        rc += '-';
        rc += time_const;
        rc += tail;
        return rc;
    }

    static inline std::string create_subs_id() noexcept
    {
        static const std::string tail("-subs-sTK");
        return create_id(tail);
    }

    static inline std::string create_receipt_id() noexcept
    {
        static const std::string tail("-rcpt-sTK");
        return create_id(tail);
    }

public:
    void clear();

//    void logon(tcp::logon frame, receipt_pool::fn_type fn)
//    {

//    }

//    void subscribe(tcp::subscribe frame, receipt_pool::fn_type fn)
//    {

//    }

//    void send(tcp::send frame, receipt_pool::fn_type fn)
//    {

//    }

//    void send(tcp::send frame)
//    {

//    }
};

} // namespace tcp
} // namespace stomptalk

