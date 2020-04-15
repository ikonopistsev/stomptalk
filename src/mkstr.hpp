#pragma once

#include <string>
#include <functional>

namespace stomptalk {

template<typename T, std::size_t N>
std::basic_string<T> mkstr(
    std::reference_wrapper<const T[N]> text_ref)
{
    return std::basic_string<T>(text_ref.get(), N - 1);
}

} // namespace sti
