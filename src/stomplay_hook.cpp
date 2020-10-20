#include "stomptalk/stomplay_hook.hpp"

using namespace stomptalk;

// make a decision about processing of known method
stomplay_hook::error_type stomplay_hook::on_method(std::size_t num) noexcept
{
    using namespace method;
    error_type rc = error::none;

    switch (num)
    {
    case num_id::none:
    case num_id::unknown:
        rc = error::failure;

    // server frames
    case num_id::error:
    case num_id::message:
        if (mode_ == mode::client)
            rc = error::server_only;
        else
    // client frames
    case num_id::send:
    default:
        if (mode_ == mode::server)
            rc = error::client_only;
    }

    return rc;
}

std::string_view stomplay_hook::error_str(error_type code) noexcept
{
    using namespace std::literals;
    constexpr static std::string_view rc[] = {
        "none"sv,
        "failure"sv,
        "bad request"sv,
        "accept version"sv,
        "client only"sv,
        "server only"sv,
        "unimplemented"sv,
        "method_unknown"sv,
        "unknown"sv
    };
    return (code >= error::unknown) ? rc[error::unknown] : rc[code];
}
