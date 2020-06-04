#include "stomptalk/user_hook.hpp"


namespace stomptalk {

method::base hook_base::eval_method(std::string_view val) noexcept
{
    using method::size_of;
    using method::detect;
    using namespace method::tag;

    method::base method(method::num_id::unknown);

    switch (val.size())
    {
    case size_of(ack()):
        detect(method, val, ack());
        break;

    case size_of(nack()):
        detect(method, val, nack()) || detect(method, val, send());
        break;

    case size_of(abort()):
        detect(method, val, abort()) || detect(method, val, begin());
        break;

    case size_of(commit()):
        detect(method, val, commit());
        break;

    case size_of(connect()):
        detect(method, val, connect()) || detect(method, val, message()) ||
            detect(method, val, receipt());
        break;

    case size_of(connected()):
        detect(method, val, connected()) || detect(method, val, subscribe());
        break;

    case size_of(disconnect()):
        detect(method, val, disconnect());
        break;

    case size_of(unsubscribe()):
        detect(method, val, unsubscribe());
        break;

    default:;
    }

    return method;
}

} // namespace stomptalk
