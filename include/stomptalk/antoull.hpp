#pragma once

#include <limits>
#include <cstdint>

namespace stomptalk {
namespace detail {

template<std::size_t N>
struct antoull
{
    static constexpr std::int64_t val[10] = {
        10ll * antoull<N - 1>::val[0],
        10ll * antoull<N - 1>::val[1],
        10ll * antoull<N - 1>::val[2],
        10ll * antoull<N - 1>::val[3],
        10ll * antoull<N - 1>::val[4],
        10ll * antoull<N - 1>::val[5],
        10ll * antoull<N - 1>::val[6],
        10ll * antoull<N - 1>::val[7],
        10ll * antoull<N - 1>::val[8],
        10ll * antoull<N - 1>::val[9],
    };

    static std::int64_t conv(const char *ptr) noexcept
    {
        switch (*ptr++) {
        case '0':
            return val[0] + antoull<N - 1>::conv(ptr);
        case '1':
            return val[1] + antoull<N - 1>::conv(ptr);
        case '2':
            return val[2] + antoull<N - 1>::conv(ptr);
        case '3':
            return val[3] + antoull<N - 1>::conv(ptr);
        case '4':
            return val[4] + antoull<N - 1>::conv(ptr);
        case '5':
            return val[5] + antoull<N - 1>::conv(ptr);
        case '6':
            return val[6] + antoull<N - 1>::conv(ptr);
        case '7':
            return val[7] + antoull<N - 1>::conv(ptr);
        case '8':
            return val[8] + antoull<N - 1>::conv(ptr);
        case '9':
            return val[9] + antoull<N - 1>::conv(ptr);
        }

        return std::numeric_limits<std::int64_t>::min();
    }
};

template<>
struct antoull<1>
{
    static constexpr std::int64_t val[10] = {
        0ll, 1ll, 2ll, 3ll, 4ll, 5ll, 6ll, 7ll, 8ll, 9ll
    };

    static std::int64_t conv(const char *ptr) noexcept
    {
        switch (*ptr) {
            case '0':
                return 0;
            case '1':
                return 1;
            case '2':
                return 2;
            case '3':
                return 3;
            case '4':
                return 4;
            case '5':
                return 5;
            case '6':
                return 6;
            case '7':
                return 7;
            case '8':
                return 8;
            case '9':
                return 9;
        }

        return std::numeric_limits<std::int64_t>::min();
    }
};

} // namespace detail

// return UNSIGNED result as SIGNED value;
// if result < 0 then parse error;
static inline std::int64_t antoull(const char *ptr, std::size_t n) noexcept
{
    switch (n)
    {
    case 0x10:
        return detail::antoull<0x10>::conv(ptr);
    case 0x0f:
        return detail::antoull<0x0f>::conv(ptr);
    case 0x0e:
        return detail::antoull<0x0e>::conv(ptr);
    case 0x0d:
        return detail::antoull<0x0d>::conv(ptr);
    case 0x0c:
        return detail::antoull<0x0c>::conv(ptr);
    case 0x0b:
        return detail::antoull<0x0b>::conv(ptr);
    case 0x0a:
        return detail::antoull<0x0a>::conv(ptr);
    case 0x09:
        return detail::antoull<0x09>::conv(ptr);
    case 0x08:
        return detail::antoull<0x08>::conv(ptr);
    case 0x07:
        return detail::antoull<0x07>::conv(ptr);
    case 0x06:
        return detail::antoull<0x06>::conv(ptr);
    case 0x05:
        return detail::antoull<0x05>::conv(ptr);
    case 0x04:
        return detail::antoull<0x04>::conv(ptr);
    case 0x03:
        return detail::antoull<0x03>::conv(ptr);
    case 0x02:
        return detail::antoull<0x02>::conv(ptr);
    case 0x01:
        return detail::antoull<0x01>::conv(ptr);
    default:;
    }

    return std::numeric_limits<std::int64_t>::min();
}

} // namespace stomptalk
