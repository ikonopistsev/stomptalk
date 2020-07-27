#pragma once

#include "stomptalk/parser.hpp"
#include "stomptalk/user_hook.hpp"
#include "stomptalk/rabbitmq.hpp"
#include "stomptalk/btpro/subs_pool.hpp"
#include "stomptalk/btpro/receipt_pool.hpp"
#include <array>

namespace stomptalk {
namespace tcp {

class stomplay final
    : public stomptalk::hook_base
{
public:
    typedef header::num_id::type heval_type;

private:
    stomptalk::parser stomp_{};
    stomptalk::parser_hook hook_{*this};
    btpro::buffer recv_{};

    subs_pool subs_{};
    receipt_pool receipt_{};

    heval_type heval_{};

    std::size_t parse(const char* ptr, std::size_t size)
    {
        return stomp_.run(hook_, ptr, size);
    }

    virtual void on_frame(parser_hook&) noexcept override
    {
        btpro::buffer buf;
        recv_ = std::move(buf);
    }

    virtual
    void on_method(parser_hook&, std::string_view method) noexcept override
    {
        std::cout << std::endl << std::endl << method << std::endl;
    }

    virtual void on_hdr_key(parser_hook& hook,
                            std::string_view text) noexcept override
    {
        std::cout << text;
        switch (hook.get_method())
        {
            case method::num_id::message:
            case method::num_id::receipt:
            case method::num_id::error:
                eval_header(hook, text);
            break;
            default:;
        }
    }

    virtual void on_hdr_val(parser_hook&,
                            std::string_view val) noexcept override
    {
        std::cout << ": " << val << std::endl;
        switch (heval_) {
        case header::num_id::receipt_id:
            receipt_id_ = val;
            break;

        case header::num_id::subscription:
            subscription_id_ = val;
            break;

        default: ;
        }

        heval_ = header::num_id::content_length;
    }

    virtual void on_body(parser_hook&,
                         const void* data, std::size_t sz) noexcept override
    {
        try
        {
            recv_.append(data, sz);
        }
        catch (...)
        {   }
    }

    virtual void on_frame_end(parser_hook& hook) noexcept override
    {
        switch (hook.get_method())
        {
        case method::num_id::message: {
            exec_on_message(subscription_id_, std::move(recv_));
            break;
        }

        case method::num_id::connected: {
            exec_on_logon();
            break;
        }

        case method::num_id::receipt: {
            exec_on_receipt();
            break;
        }

        case method::num_id::error: {
            std::cout << "ERROR!" << std::endl;
            break;
        }

        default: ;
        }
    }

    void eval_header(parser_hook&, std::string_view val) noexcept
    {
        using header::size_of;
        using namespace header::tag;

        header::mask_id::type rc;
        switch (val.size())
        {
            case (size_of(receipt_id())):
                if (detect(rc, val, receipt_id()))
                        heval_ = header::num_id::receipt_id;
            break;
            case (size_of(subscription())):
                if (detect(rc, val, subscription()))
                        heval_ = header::num_id::subscription;
            default:;
        }
    }

    void exec_on_logon() noexcept
    {
        try
        {
            (self_.*logonfn_)();
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

    void exec_on_receipt() noexcept
    {
        try
        {
            receipt_.on_recepit(receipt_id_);
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

    void exec_on_message(const std::string& subscription_id, btpro::buffer buf) noexcept
    {
        try
        {
            subs_.on_message(subscription_id, std::move(buf));
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

    void create()
    {
        bev_.destroy();

        bev_.create(queue_, btpro::socket());

        bev_.set(&proxy<this_type>::recvcb,
            nullptr, &proxy<this_type>::evcb, this);
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
    connection(btpro::queue_ref queue, T& self, on_event_fn evfn,
               on_connect_fn connfn, on_connect_fn logonfn) noexcept
        : queue_(std::move(queue))
        , self_(self)
        , evfn_(evfn)
        , connfn_(connfn)
        , logonfn_(logonfn)
    {
        assert(evfn);
        assert(connfn);
        assert(logonfn);
    }

    void connect(btpro::dns_ref dns, const std::string& host, int port)
    {
        create();

        bev_.connect(dns, host, port);
    }

    void logon(stomptalk::v12::connect frame)
    {
        std::cout << std::endl << frame.str() << std::endl;
        frame.write(bev_);
    }

    void logon(stomptalk::v12::connect frame, on_connect_fn logonfn)
    {
        assert(logonfn);

        std::cout << std::endl <<  frame.str() << std::endl;
        frame.write(bev_);

        logonfn_ = logonfn;
    }

    void subscribe(tcp::subscribe frame, receipt_pool::fn_type fn)
    {
        assert(fn);

        // id квитанции
        auto receipt_id = create_receipt_id();
        frame.push(header::receipt(receipt_id));

        // id подписки
        auto subs_id = create_subs_id();
        frame.push(header::id(subs_id));

        auto frame_fn = frame.fn();
        receipt_.create(receipt_id, [=]{
            try
            {
                // сохраняем подписку
                subs_.create(subs_id, std::move(frame_fn));
                // выполняем обработчик
                fn();
            }  catch (...) {

            }
        });

        std::cout << std::endl << frame.str() << std::endl;
        frame.write(bev_);
    }

    void send(tcp::send frame, receipt_pool::fn_type fn)
    {
        if (fn)
        {
            auto receipt_id = create_receipt_id();
            frame.push(header::receipt(receipt_id));
            receipt_.create(receipt_id, std::move(fn));
        }

        send(std::move(frame));
    }

    void send(tcp::send frame)
    {
        std::cout << std::endl << frame.str() << std::endl;
        frame.write(bev_);
    }
};

} // namespace btpro
} // namespace stomptalk

