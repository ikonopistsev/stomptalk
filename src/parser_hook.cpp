#include "stomptalk/parser_hook.hpp"

namespace stomptalk {

bool parser_hook::eval_method(std::string_view val) noexcept
{
    auto text = val.data();
    auto size = val.size();
    switch (size)
    {
    case tag::size_of(tag::ack()):
        return tag::detect_method_id(method_, tag::ack(), text);

    case tag::size_of(tag::nack()):
        return tag::detect_method_id(method_, tag::nack(), text) ||
            tag::detect_method_id(method_, tag::send(), text);

    case tag::size_of(tag::abort()):
        return tag::detect_method_id(method_, tag::abort(), text) ||
            tag::detect_method_id(method_, tag::begin(), text);

    case tag::size_of(tag::commit()):
        return tag::detect_method_id(method_, tag::commit(), text);

    case tag::size_of(tag::connect()):
        return tag::detect_method_id(method_, tag::connect(), text) ||
            tag::detect_method_id(method_, tag::message(), text) ||
            tag::detect_method_id(method_, tag::receipt(), text);

    case tag::size_of(tag::connected()):
        return tag::detect_method_id(method_, tag::connected(), text) ||
            tag::detect_method_id(method_, tag::subscribe(), text);

    case tag::size_of(tag::disconnect()):
        return tag::detect_method_id(method_, tag::disconnect(), text);

    case tag::size_of(tag::unsubscribe()):
        return tag::detect_method_id(method_, tag::unsubscribe(), text);

    default:;
    }

    return false;
}

void parser_hook::next_frame() noexcept
{
    error_ = error::next_frame;
}

} // stomptalk
