#include "stomptalk/parser_hook.hpp"

namespace stomptalk {

bool parser_hook::eval_method(std::string_view val) noexcept
{
    using method::size_of;
    using namespace method::tag;

    auto text = val.data();
    auto size = val.size();
    switch (size)
    {
    case size_of(ack()):
        return detect(method_, ack(), text);

    case size_of(nack()):
        return detect(method_, nack(), text) ||
            detect(method_, send(), text);

    case size_of(abort()):
        return detect(method_, abort(), text) ||
            detect(method_, begin(), text);

    case size_of(commit()):
        return detect(method_, commit(), text);

    case size_of(connect()):
        return detect(method_, connect(), text) ||
            detect(method_, message(), text) ||
            detect(method_, receipt(), text);

    case size_of(connected()):
        return detect(method_, connected(), text) ||
            detect(method_, subscribe(), text);

    case size_of(disconnect()):
        return detect(method_, disconnect(), text);

    case size_of(unsubscribe()):
        return detect(method_, unsubscribe(), text);

    default:;
    }

    return false;
}

void parser_hook::eval_content_type(std::string_view val) noexcept
{
    content_type_ = header::tag::content_type::eval_content_type(val);
}

void parser_hook::next_frame() noexcept
{
    error_ = error::next_frame;
}

} // stomptalk
