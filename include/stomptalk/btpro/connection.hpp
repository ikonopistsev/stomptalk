#pragma once

#include "stomptalk/btpro/stomplay.hpp"
#include "btpro/tcp/bev.hpp"
#include <map>

namespace stomptalk {
namespace tcp {

class connection
{
public:
    typedef rabbitmq::header_store header_type;
    typedef std::function<void()> fun_type;
    typedef std::function<void(short)> on_event_type;
    typedef std::function<void(btpro::buffer, const header_type&)> on_data_type;

private:
    btpro::queue_ref queue_{};
    btpro::tcp::bev bev_{};

    on_event_type event_fun_{};
    fun_type on_connect_fun_{};

    stomplay stomplay_{};

    template<class A>
    struct proxy
    {
        static inline void evcb(bufferevent *, short what, void *self) noexcept
        {
            assert(self);
            static_cast<A*>(self)->do_evcb(what);
        }

        static inline void recvcb(bufferevent *hbev, void *self) noexcept
        {
            assert(self);
            btpro::buffer_ref input(bufferevent_get_input(hbev));
            static_cast<A*>(self)->do_recv(std::move(input));
        }
    };

    void do_evcb(short what) noexcept
    {
        if (what == BEV_EVENT_CONNECTED)
        {
            bev_.enable(EV_READ);
            on_connect_fun_();
        }
        else
        {
            bev_.destroy();
            event_fun_(what);
        }
    }

    void do_recv(btpro::buffer_ref input)
    {
        // такого типа быть не может
        // буферэвент должен отрабоать дисконнект
        assert(!input.empty());

        while (!input.empty())
        {
            // сколько непрерывных данных мы имеем
            auto needle = input.contiguous_space();
#ifdef DEBUG
            // это для тестов
            if (needle > 1)
                needle /= 2;
#endif // DEBUG
            // получаем указатель
            auto ptr = reinterpret_cast<const char*>(
                input.pullup(static_cast<ev_ssize_t>(needle)));

            // парсим данные
            auto rc = stomplay_.parse(ptr, needle);

            // очищаем input
            input.drain(rc);

            // если не все пропарсилось
            // это ошибка
            if (rc < needle)
                throw std::runtime_error("parse error");
        }

        // проверяем что все пропарсили
        assert(input.empty());
    }

//    void exec_on_logon() noexcept
//    {
//        try
//        {
//            (self_.*logonfn_)();
//        }
//        catch (const std::exception& e)
//        {
//            std::cerr << e.what() << std::endl;
//        }
//        catch (...)
//        {
//            std::cerr << "exec_on_logon" << std::endl;
//        }
//    }



//    void exec_on_message(const std::string& subscription_id, btpro::buffer buf) noexcept
//    {
//        try
//        {
//            subs_.on_message(subscription_id, std::move(buf));
//        }
//        catch (const std::exception& e)
//        {
//            std::cerr << e.what() << std::endl;
//        }
//        catch (...)
//        {
//            std::cerr << "exec_on_message" << std::endl;
//        }
//    }

    void create()
    {
        bev_.destroy();

        bev_.create(queue_, btpro::socket());

        bev_.set(&proxy<connection>::recvcb,
            nullptr, &proxy<connection>::evcb, this);
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
    connection(btpro::queue_ref queue,
               on_event_type evfn, fun_type connfn) noexcept
        : queue_(std::move(queue))
        , event_fun_(evfn)
        , on_connect_fun_(connfn)
    {
        assert(evfn);
        assert(connfn);
    }

    void connect(btpro::dns_ref dns, const std::string& host, int port)
    {
        create();

        bev_.connect(dns, host, port);
    }

    void logon(tcp::logon frame, tcp::logon::fn_type fn)
    {
        stomplay_.on_logon(std::move(fn));

        std::cout << std::endl << frame.str() << std::endl << std::endl;
        frame.write(bev_);
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
        stomplay_.add_receipt(receipt_id, [=](const stomptalk::rabbitmq::header_store& hdr){
            stomplay_.add_subscribe(subs_id, std::move(frame_fn));
            fn(hdr);
        });

        std::cout << std::endl << frame.str() << std::endl << std::endl;
        frame.write(bev_);
    }

    void send(tcp::send frame, receipt_pool::fn_type fn)
    {
        if (fn)
        {
            auto receipt_id = create_receipt_id();
            frame.push(header::receipt(receipt_id));
            stomplay_.add_receipt(receipt_id, std::move(fn));
        }

        send(std::move(frame));
    }

    void send(tcp::send frame)
    {
        //std::cout << std::endl << frame.str() << std::endl;
        frame.write(bev_);
    }
};

} // namespace btpro
} // namespace stomptalk

