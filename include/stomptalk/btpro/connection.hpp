#pragma once

#include "stomptalk/btpro/stomplay.hpp"
#include "btpro/tcp/bev.hpp"
#include <map>

namespace stomptalk {
namespace tcp {

class connection
{
public:
    typedef std::function<void()> on_connect_type;
    typedef std::function<void(short)> on_event_type;

private:
    btpro::queue_ref queue_{};
    btpro::tcp::bev bev_{};

    on_event_type event_fun_{};
    on_connect_type on_connect_fun_{};

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

    void do_evcb(short what) noexcept;

    void do_recv(btpro::buffer_ref input);

    void create();

public:
    connection(btpro::queue_ref queue,
               on_event_type evfn, on_connect_type connfn) noexcept
        : queue_(std::move(queue))
        , event_fun_(evfn)
        , on_connect_fun_(connfn)
    {
        assert(evfn);
        assert(connfn);
    }

    void connect(btpro::dns_ref dns, const std::string& host, int port);

    template<class Rep, class Period>
    void connect(btpro::dns_ref dns, const std::string& host, int port,
                 std::chrono::duration<Rep, Period> timeout)
    {
        connect(dns, host, port);

        auto tv = btpro::make_timeval(timeout);
        bev_.set_timeout(nullptr, &tv);
    }

    void logon(tcp::logon frame, stomplay::fun_type fn);

    void subscribe(tcp::subscribe frame, stomplay::fun_type fn);

    void unsubscribe(const std::string& sub_id, stomplay::fun_type fn);

    void send(tcp::send frame, stomplay::fun_type fn);

    void send(tcp::send frame)
    {
        //std::cout << std::endl << frame.str() << std::endl;
        frame.write(bev_);
    }
};

} // namespace btpro
} // namespace stomptalk

