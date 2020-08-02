#include "stomptalk/btpro/connection.hpp"

using namespace stomptalk::tcp;

void connection::do_evcb(short what) noexcept
{
    if (what == BEV_EVENT_CONNECTED)
    {
        bev_.enable(EV_READ);
        on_connect_fun_();
    }
    else
    {
        stomplay_.logout();
        bev_.destroy();
        event_fun_(what);
    }
}

void connection::do_recv(btpro::buffer_ref input)
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
}

void connection::create()
{
    bev_.destroy();

    bev_.create(queue_, btpro::socket());

    bev_.set(&proxy<connection>::recvcb,
        nullptr, &proxy<connection>::evcb, this);
}

std::string startup_time() noexcept
{
    using namespace std::chrono;
    auto t = system_clock::now();
    auto c = duration_cast<milliseconds>(t.time_since_epoch()).count();
    return std::to_string(c);
}

std::string create_id(const std::string& tail) noexcept
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

std::string create_subs_id() noexcept
{
    static const std::string tail("-subs-sTK");
    return create_id(tail);
}

std::string create_receipt_id() noexcept
{
    static const std::string tail("-rcpt-sTK");
    return create_id(tail);
}

void connection::connect(btpro::dns_ref dns, const std::string& host, int port)
{
    create();

    bev_.connect(dns, host, port);
}

void connection::logon(tcp::logon frame, stomplay::fun_type fn)
{
    assert(fn);

    stomplay_.on_logon(std::move(fn));

    frame.write(bev_);
}

void connection::subscribe(tcp::subscribe frame, stomplay::fun_type fn)
{
    assert(fn);

    // генерируем id квитанции
    auto receipt_id = create_receipt_id();
    frame.push(header::receipt(receipt_id));

    // получаем id подписки
    // если нет - создаем новый
    // и добавляем во фрейм
    auto subs_id = std::move(frame.id());
    if (subs_id.empty())
    {
        subs_id = create_subs_id();
        frame.push(header::id(subs_id));
    }

    // получаем обработчик подписки
    stomplay_.add_handler(receipt_id,
        [this , id = std::move(subs_id), frame_fn = frame.fn(),
         receipt_fn = std::move(fn)] (packet p) {
            // добавляем id подписки и ее обработчик
            stomplay_.add_handler(id, std::move(frame_fn));
            // вызываем клиентский обработчки подписки
            receipt_fn(std::move(p));
    });

    frame.write(bev_);
}

void connection::send(tcp::send frame, stomplay::fun_type fn)
{
    assert(fn);

    auto receipt_id = create_receipt_id();
    frame.push(header::receipt(receipt_id));

    stomplay_.add_handler(receipt_id, std::move(fn));

    send(std::move(frame));
}

