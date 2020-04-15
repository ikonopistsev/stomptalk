#include "stomptalk/strref.hpp"

namespace stomptalk {

strref::strref(const char* ptr, std::size_t size) noexcept
    : ptr_(ptr)
    , size_(size)
{
    assert(ptr);
}

void strref::print(std::string& out) const
{
    auto sz = size();
    if (sz)
        out.append(data(), sz);
}

} // namespace sti
