#include "stomptalk/parser_hook.hpp"

namespace stomptalk {

bool parser_hook::eval_method(std::string_view val) noexcept
{
    using method::size_of;
    using method::detect;
    using namespace method::tag;

    switch (val.size())
    {
    case size_of(ack()):
        return detect(method_, val, ack());

    case size_of(nack()):
        return detect(method_, val, nack()) ||
            detect(method_, val, send());

    case size_of(abort()):
        return detect(method_, val, abort()) ||
            detect(method_, val, begin());

    case size_of(commit()):
        return detect(method_, val, commit());

    case size_of(connect()):
        return detect(method_, val, connect()) ||
            detect(method_, val, message()) ||
            detect(method_, val, receipt());

    case size_of(connected()):
        return detect(method_, val, connected()) ||
            detect(method_, val, subscribe());

    case size_of(disconnect()):
        return detect(method_, val, disconnect());

    case size_of(unsubscribe()):
        return detect(method_, val, unsubscribe());

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
