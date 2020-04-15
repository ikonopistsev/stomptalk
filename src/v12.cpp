#include "stomptalk/v12.hpp"
#include "mkstr.hpp"

namespace stomptalk {

namespace cmd {
namespace name {

static const auto stomp(mkstr(std::cref("STOMP")));
static const auto connect(mkstr(std::cref("CONNECT")));
static const auto send(mkstr(std::cref("SEND")));
static const auto subscribe(mkstr(std::cref("SUBSCRIBE")));
static const auto unsubscribe(mkstr(std::cref("UNSUBSCRIBE")));
static const auto ack(mkstr(std::cref("ACK")));
static const auto nack(mkstr(std::cref("NACK")));
static const auto begin(mkstr(std::cref("BEGIN")));
static const auto commit(mkstr(std::cref("COMMIT")));
static const auto abort(mkstr(std::cref("ABORT")));
} // namespace name
} // namespace cmd

namespace v12 {

heart_beat::heart_beat(std::size_t cx, std::size_t cy)
    : cx_(cx)
    , cy_(cy)
{   }

void heart_beat::apply(frame_base& frame) const
{
    auto t = std::to_string(cx_);
    t += ',';
    t += std::to_string(cy_);
    frame.push(header::heart_beat(t));
}

connect::connect(const std::string& host, std::size_t size_reserve)
{
    reserve(size_reserve);
    print(cmd::name::connect);
    push(header::accept_version("1.2"));
    push(header::host(host));
}

connect::connect(const std::string& host,
    const std::string& login, std::size_t size_reserve)
{
    reserve(size_reserve);
    print(cmd::name::connect);
    push(header::accept_version("1.2"));
    push(header::host(host));
    push(header::login(login));
}

connect::connect(const std::string& host, const std::string& login,
    const std::string& passcode, std::size_t size_reserve)
{
    reserve(size_reserve);
    print(cmd::name::connect);
    push(header::accept_version("1.2"));
    push(header::host(host));
    push(header::login(login));
    push(header::passcode(passcode));
}

//SEND
//    REQUIRED: destination
//    OPTIONAL: transaction

send::send(const std::string& dest, std::size_t size_reserve)
{
    reserve(size_reserve);
    print(cmd::name::send);
    push(header::destination(dest));
}


} // namespace v12
} // namespace stomptalk

