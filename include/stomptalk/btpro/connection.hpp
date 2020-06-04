#pragma once

#include "stomptalk/parser.hpp"
#include "stomptalk/user_hook.hpp"
#include "stomptalk/btpro/v12.hpp"
#include "btpro/tcp/bev.hpp"
#include "stomptalk/btpro/subscription.hpp"
#include <map>

namespace stomptalk {
namespace tcp {

template <class T>
class connection final
    : public stomptalk::hook_base
{
public:
    typedef void (T::*on_connect_fn)();
    typedef void (T::*on_event_fn)(short);
    typedef void (T::*on_stomp_fn)(v12::incoming::frame);
    typedef connection<T> this_type;

private:
    btpro::queue_ref queue_{};

    T& self_;
    btpro::tcp::bev bev_{};

    on_event_fn evfn_{};
    on_connect_fn connfn_{};
    on_stomp_fn logonfn_{};
    on_stomp_fn messagefn_{};

    stomptalk::parser stomp_{};
    stomptalk::parser_hook hook_{*this};

    std::string key_{};
    std::vector<header::custom> header_{};

    typedef std::map<std::string, on_stomp_fn> recept_store_type;
    typedef typename recept_store_type::iterator recept_iterator;
    recept_store_type id_store_{};

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

            assert(connfn_);
            (self_.*connfn_)();
        }
        else
        {
            bev_.destroy();
            (self_.*evfn_)(what);
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

            // это для тестов
            if (needle > 1)
                needle /= 2;

            // получаем указатель
            auto ptr = reinterpret_cast<const char*>(input.pullup(needle));

            // парсим данные
            auto rc = stomp_.run(hook_, ptr, needle);

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

    virtual void on_frame(parser_hook&) noexcept override
    {
        header_.clear();
    }

    virtual
    void on_method(parser_hook&, std::string_view) noexcept override
    {
    }

    virtual void on_hdr_key(parser_hook&,
                            std::string_view key) noexcept override
    {
        key_.assign(key);
    }

    virtual void on_hdr_val(parser_hook&,
                            std::string_view val) noexcept override
    {
        header_.emplace_back(std::move(key_), std::string(val));
    }

    virtual void on_body(parser_hook&,
                         const void*, std::size_t) noexcept override
    {

    }

    template<class F>
    void foreach_header(F fn)
    {
        for (auto& h: header_)
            fn(std::string_view(h.key()), std::string_view(h.value()));
    }

    template<class S>
    recept_iterator touch_header(v12::incoming::frame& rc, S tag)
    {
        recept_iterator i = id_store_.end();
        foreach_header([&](std::string_view key, std::string_view value) {
            std::cout << key << " = " << value << std::endl;

            rc.push(header::incoming(key, value));

            if (memeq<header::size_of(tag)>::cmp(
                tag.name().data(), key.data()))
            {
                i = id_store_.find(std::string(value));
            }
        });
        return i;
    }

    virtual void on_frame_end(parser_hook& hook) noexcept override
    {
        switch (hook.get_method())
        {
        case method::num_id::message: {

            v12::incoming::frame rc;
            rc.set(method::num_id::message);

            std::cout << std::endl << rc.method() << std::endl;
            header::tag::subscription header;
            auto i = touch_header(rc, header);
            if (i != id_store_.end())
                exec_on_message(std::move(rc), i->second);

            break;
        }

        case method::num_id::connected: {
            v12::incoming::frame rc;
            rc.set(method::num_id::connected);

            std::cout << std::endl << rc.method() << std::endl;
            foreach_header([&](std::string_view key, std::string_view value) {
                std::cout << key << " = " << value << std::endl;
                rc.push(header::incoming(key, value));
            });

            exec_on_logon(rc);

            break;
        }

        case method::num_id::receipt: {
            v12::incoming::frame rc;
            rc.set(method::num_id::receipt);

            std::cout << std::endl << "receipt" << std::endl;
            header::tag::receipt_id header;
            auto i = touch_header(rc, header);
            if (i != id_store_.end())
                exec_on_message(std::move(rc), i->second);

            break;
        }

        case method::num_id::error: {
            v12::incoming::frame rc;
            rc.set(method::num_id::receipt);

            std::cout << std::endl << "error" << std::endl;
            foreach_header([&](std::string_view key, std::string_view value) {
                std::cout << key << " = " << value << std::endl;
                rc.push(header::incoming(key, value));
            });
            break;
        }

        default: ;
        }
    }

    void exec_on_logon(v12::incoming::frame frame) noexcept
    {
        try
        {
            (self_.*logonfn_)(std::move(frame));
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

    void exec_on_message(v12::incoming::frame frame, on_stomp_fn fn) noexcept
    {
        try
        {
            (self_.*fn)(std::move(frame));
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

public:
    connection(btpro::queue_ref queue, T& self, on_event_fn evfn,
               on_connect_fn connfn, on_stomp_fn logonfn) noexcept
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

    void connect(const std::string& host, int port)
    {
        create();
        bev_.connect(btpro::ipv6::addr(host, port));
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

    void subscribe(stomptalk::v12::subscribe frame)
    {
        std::cout << std::endl << frame.str() << std::endl;
        frame.write(bev_);
    }

    void subscribe(stomptalk::v12::subscribe frame, on_stomp_fn subsfn)
    {
        assert(subsfn);

        const auto& frame_id = frame.id();

        if (!frame_id.empty())
        {
            if (id_store_.find(frame_id) != id_store_.end())
                throw std::runtime_error("dub id");

            std::cout << std::endl <<  frame.str() << std::endl;
            frame.write(bev_);

            id_store_[frame_id] = subsfn;
        }
        else
        {
            std::cout << std::endl <<  frame.str() << std::endl;
            frame.write(bev_);
        }
    }

    //void subscribe()
};

} // namespace btpro
} // namespace stomptalk

