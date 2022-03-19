#pragma once

#include <string_view>

namespace stomptalk {

constexpr std::string_view version() noexcept
{
#define STOMPTALK_STR_HELPER(x) #x
#define STOMPTALK_STR(x) STOMPTALK_STR_HELPER(x)
    constexpr std::string_view rc = STOMPTALK_STR(STOMPTALK_VERSION);
#undef STOMPTALK_STR_HELPER
#undef STOMPTALK_STR
    return rc;
}

} // namespace stomptalk
