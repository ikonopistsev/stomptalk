#pragma once

#include <limits>
#include <cstdint>

namespace stomptalk {
namespace detail {

template<std::size_t N>
struct antoull
{
    static constexpr auto pow = 10 * antoull<N - 1>::pow;
    static inline
    std::int64_t conv(const char *ptr) noexcept
    {
        auto i = static_cast<std::intptr_t>(*ptr - '0');
        if ((i < 0) || (i > 9))
            return std::numeric_limits<std::int64_t>::min();
        return static_cast<std::int64_t>(i * pow) + antoull<N - 1>::conv(++ptr);
    }
};

template<>
struct antoull<1>
{
    static constexpr auto pow = std::int64_t{1};
    static inline
    std::int64_t conv(const char *ptr) noexcept
    {
        auto i = static_cast<std::intptr_t>(*ptr - '0');
        return ((i < 0) || (i > 9)) ?
            std::numeric_limits<std::int64_t>::min() : i;
    }
};

} // namespace detail

// return UNSIGNED result as SIGNED value;
// if result < 0 then parse error;
static inline
std::int64_t antoull(const char *ptr, std::size_t n) noexcept
{
    switch (n)
    {
    case 0x12: return detail::antoull<0x12>::conv(ptr);
    case 0x11: return detail::antoull<0x11>::conv(ptr);
    case 0x10: return detail::antoull<0x10>::conv(ptr);
    case 0x0f: return detail::antoull<0x0f>::conv(ptr);
    case 0x0e: return detail::antoull<0x0e>::conv(ptr);
    case 0x0d: return detail::antoull<0x0d>::conv(ptr);
    case 0x0c: return detail::antoull<0x0c>::conv(ptr);
    case 0x0b: return detail::antoull<0x0b>::conv(ptr);
    case 0x0a: return detail::antoull<0x0a>::conv(ptr);
    case 0x09: return detail::antoull<0x09>::conv(ptr);
    case 0x08: return detail::antoull<0x08>::conv(ptr);
    case 0x07: return detail::antoull<0x07>::conv(ptr);
    case 0x06: return detail::antoull<0x06>::conv(ptr);
    case 0x05: return detail::antoull<0x05>::conv(ptr);
    case 0x04: return detail::antoull<0x04>::conv(ptr);
    case 0x03: return detail::antoull<0x03>::conv(ptr);
    case 0x02: return detail::antoull<0x02>::conv(ptr);
    case 0x01: return detail::antoull<0x01>::conv(ptr);
    case 0x00: return 0;
    default:;
    }

    return std::numeric_limits<std::int64_t>::min();
}

} // namespace stomptalk
