#include "stomptalk/v12.hpp"
#include "stomptalk/header.hpp"

namespace stomptalk {

namespace cmd {
namespace name {

static const auto stomp = make_ref("STOMP");
static const auto connect = make_ref("CONNECT");
static const auto send = make_ref("SEND");
static const auto subscribe = make_ref("SUBSCRIBE");
static const auto unsubscribe = make_ref("UNSUBSCRIBE");
static const auto ack = make_ref("ACK");
static const auto nack = make_ref("NACK");
static const auto begin = make_ref("BEGIN");
static const auto commit = make_ref("COMMIT");
static const auto abort = make_ref("ABORT");
} // namespace name
} // namespace cmd

namespace v12 {

connect::connect(const std::string& host, std::size_t size_reserve)
{
    reserve(size_reserve);
    push_ref(cmd::name::connect);
    push(header::ver12());
    push(header::host(host));
}

connect::connect(const std::string& host,
    const std::string& login, std::size_t size_reserve)
{
    reserve(size_reserve);
    push_ref(cmd::name::connect);
    push(header::ver12());
    push(header::host(host));
    push(header::login(login));
}

connect::connect(const std::string& host, const std::string& login,
    const std::string& passcode, std::size_t size_reserve)
{
    reserve(size_reserve);
    push_ref(cmd::name::connect);
    push(header::ver12());
    push(header::host(host));
    push(header::login(login));
    push(header::passcode(passcode));
}

//SUBSCRIBE
//    REQUIRED: destination, id
//    OPTIONAL: ack

subscribe::subscribe(const std::string& destination,
    const std::string& id, std::size_t size_reserve)
{
    reserve(size_reserve);
    push_ref(cmd::name::subscribe);
    push(header::destination(destination));
    push(header::id(id));
}

//SEND
//    REQUIRED: destination
//    OPTIONAL: transaction

send::send(const std::string& dest, std::size_t size_reserve)
{
    reserve(size_reserve);
    push_ref(cmd::name::send);
    push(header::destination(dest));
}


} // namespace v12
} // namespace stomptalk

