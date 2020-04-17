#include "stomptalk/user_hook.hpp"
#include "stomptalk/parser_hook.hpp"

using namespace stomptalk;

void user_hook::apply(parser_hook& hook) const noexcept
{
    hook.set(*this);
}
