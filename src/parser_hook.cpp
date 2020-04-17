#include "stomptalk/parser_hook.hpp"

namespace stomptalk {

bool parser_hook::eval_method(const strref& val) noexcept
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

// вызываем каллбек
void parser_hook::on_begin() noexcept
{
    hook_.on_hook_begin(*this);
}

void parser_hook::on_method(const strref& text) noexcept
{
    if (!eval_method(text))
        method_ = method::unknown;

    hook_.on_method(*this, text);
}

void parser_hook::on_hdr_key(const strref& text) noexcept
{
    hook_.on_hdr_key(*this, text);
}

void parser_hook::on_hdr_val(const strref& text) noexcept
{
    hook_.on_hdr_val(*this, text);
}

void parser_hook::on_body(const strref& text) noexcept
{
    hook_.on_body(*this, text);
}

void parser_hook::on_frame() noexcept
{
    hook_.on_hook_end(*this);
}

void parser_hook::next_frame() noexcept
{
    error_ = error::next_frame;
}

} // stomptalk
