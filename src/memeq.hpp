#pragma once

#include <cstdint>

template <int L>
struct memeq;

template<>
struct memeq<1>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        auto v1 = reinterpret_cast<const std::uint8_t*>(ptr1);
        auto v2 = reinterpret_cast<const std::uint8_t*>(ptr2);
        return *v1 == *v2;
    }
};

template<>
struct memeq<2>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        auto v1 = reinterpret_cast<const std::uint16_t*>(ptr1);
        auto v2 = reinterpret_cast<const std::uint16_t*>(ptr2);
        return *v1 == *v2;
    }
};

template<>
struct memeq<3>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        return memeq<2>::cmp(ptr1, ptr2) &&
               memeq<1>::cmp(reinterpret_cast<const std::uint8_t*>(ptr1) + 2,
                             reinterpret_cast<const std::uint8_t*>(ptr2) + 2);
    }
};

template<>
struct memeq<4>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        auto v1 = reinterpret_cast<const std::uint32_t*>(ptr1);
        auto v2 = reinterpret_cast<const std::uint32_t*>(ptr2);
        return *v1 == *v2;
    }
};

template<>
struct memeq<5>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        return memeq<4>::cmp(ptr1, ptr2) &&
               memeq<1>::cmp(reinterpret_cast<const std::uint8_t*>(ptr1) + 4,
                             reinterpret_cast<const std::uint8_t*>(ptr2) + 4);
    }
};

template<>
struct memeq<6>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        return memeq<4>::cmp(ptr1, ptr2) &&
               memeq<2>::cmp(reinterpret_cast<const std::uint8_t*>(ptr1) + 4,
                             reinterpret_cast<const std::uint8_t*>(ptr2) + 4);
    }
};

template<>
struct memeq<7>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        return memeq<4>::cmp(ptr1, ptr2) &&
               memeq<3>::cmp(reinterpret_cast<const std::uint8_t*>(ptr1) + 4,
                             reinterpret_cast<const std::uint8_t*>(ptr2) + 4);
    }
};

template<>
struct memeq<8>
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        auto v1 = reinterpret_cast<const std::uint64_t*>(ptr1);
        auto v2 = reinterpret_cast<const std::uint64_t*>(ptr2);
        return *v1 == *v2;
    }
};

template <int L>
struct memeq
{
    static bool cmp(const void *ptr1, const void *ptr2) noexcept
    {
        return (L > 8) ? memeq<8>::cmp(ptr1, ptr2) &&
            memeq<L-8>::cmp(reinterpret_cast<const std::uint8_t*>(ptr1) + 8,
                            reinterpret_cast<const std::uint8_t*>(ptr2) + 8)
        : memeq<8>::cmp(ptr1, ptr2);
    }
};

template<int L>
bool eqstr(const char (&str)[L], const char *target)
{
    return memeq<L-1>::cmp(str, target);
}
