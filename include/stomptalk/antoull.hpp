#pragma once

#include <limits>
#include <string>
#include <cstdint>
#include <cassert>
#include <type_traits>

namespace stomptalk {
namespace detail {
namespace {

template<class T, std::size_t N>
struct antout
{
    constexpr static auto pw = 10 * antout<T, N - 1>::pw;
    static T conv(const char *ptr) noexcept
    {
        static_assert (std::is_signed<T>::value, "type not signed");
        auto i = static_cast<std::intptr_t>(*ptr) - '0';
        if ((i < 0) || (i > 9))
            return std::numeric_limits<T>::min();
        return static_cast<T>(i * pw) + antout<T, N - 1>::conv(++ptr);
    }
};

template<class T>
struct antout<T, 1>
{
    constexpr static auto pw = std::int64_t(1);
    static T conv(const char *ptr) noexcept
    {
        static_assert (std::is_signed<T>::value, "type not signed");
        auto i = static_cast<std::intptr_t>(*ptr) - '0';
        return ((i < 0) || (i > 9)) ?
            std::numeric_limits<T>::min() : static_cast<T>(i);
    }
};

}

} // namespace detail

// return UNSIGNED result as SIGNED value;
// if result < 0 then parse error;
static inline
std::int64_t antoull(const char *ptr, std::size_t n) noexcept
{
    assert(ptr);

    using namespace detail;
    switch (n)
    {
    case 0x12: return antout<std::int64_t, 0x12>::conv(ptr);
    case 0x11: return antout<std::int64_t, 0x11>::conv(ptr);
    case 0x10: return antout<std::int64_t, 0x10>::conv(ptr);
    case 0x0f: return antout<std::int64_t, 0x0f>::conv(ptr);
    case 0x0e: return antout<std::int64_t, 0x0e>::conv(ptr);
    case 0x0d: return antout<std::int64_t, 0x0d>::conv(ptr);
    case 0x0c: return antout<std::int64_t, 0x0c>::conv(ptr);
    case 0x0b: return antout<std::int64_t, 0x0b>::conv(ptr);
    case 0x0a: return antout<std::int64_t, 0x0a>::conv(ptr);
    case 0x09: return antout<std::int64_t, 0x09>::conv(ptr);
    case 0x08: return antout<std::int64_t, 0x08>::conv(ptr);
    case 0x07: return antout<std::int64_t, 0x07>::conv(ptr);
    case 0x06: return antout<std::int64_t, 0x06>::conv(ptr);
    case 0x05: return antout<std::int64_t, 0x05>::conv(ptr);
    case 0x04: return antout<std::int64_t, 0x04>::conv(ptr);
    case 0x03: return antout<std::int64_t, 0x03>::conv(ptr);
    case 0x02: return antout<std::int64_t, 0x02>::conv(ptr);
    case 0x01: return antout<std::int64_t, 0x01>::conv(ptr);
    default:;
    }

    // parse error
    return std::numeric_limits<std::int64_t>::min();
}

} // namespace stomptalk
