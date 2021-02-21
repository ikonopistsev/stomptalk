// Copyright © 2020 igor . ikonopistsev at gmail
// This work is free. You can redistribute it and/or modify it under the
// terms of the Do What The Fuck You Want To Public License, Version 2,
// as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

#pragma once

#include <cstddef>
#include <cstdint>

namespace stomptalk {

template<bool>
struct basic_fnv1a_result;

template<>
struct basic_fnv1a_result<true>
{
    using x32 = std::size_t;
    using x64 = std::size_t;
};

template<>
struct basic_fnv1a_result<false>
{
    using x32 = std::size_t;
    using x64 = std::uint64_t;
};

template<bool, int>
struct basic_fnv1a;

template<bool x86_64>
struct basic_fnv1a<x86_64, 4>
{
    using hash_type = typename basic_fnv1a_result<x86_64>::x32;
    constexpr static auto salt = hash_type{ 0x811c9dc5 };

    constexpr auto operator()(const char *ptr) const noexcept
    {
        auto hval = salt;
        while (*ptr != '\0')
        {
            hval ^= static_cast<std::size_t>(*ptr++);
            hval += (hval << 1) + (hval << 4) +
                (hval << 7) + (hval << 8) + (hval << 24);
        }
        return hval;
    }

    auto operator()(std::size_t& len, const char *ptr) const noexcept
    {
        auto hval = salt;
        const char *p = ptr;
        while (*p != '\0')
        {
            hval ^= static_cast<std::size_t>(*p++);
            hval += (hval << 1) + (hval << 4) +
                (hval << 7) + (hval << 8) + (hval << 24);
        }
        len = static_cast<std::size_t>(p - ptr);
        return hval;
    }

    constexpr auto operator()(const char* p, const char* e) const noexcept
    {
        auto hval = salt;
        while (p < e)
        {
            hval ^= static_cast<std::size_t>(*p++);
            hval += (hval << 1) + (hval << 4) +
                (hval << 7) + (hval << 8) + (hval << 24);
        }
        return hval;
    }

    constexpr auto operator()(const char *ptr, std::size_t len) const noexcept
    {
        auto p = static_cast<const char*>(ptr);
        return this->operator()(p, p + len);
    }

    template<class T>
    constexpr static auto calc_hash(typename T::const_iterator p,
        typename T::const_iterator e) noexcept
    {
        auto hval = salt;
        while (p < e)
        {
            hval ^= static_cast<std::size_t>(*p++);
            hval += (hval << 1) + (hval << 4) +
                (hval << 7) + (hval << 8) + (hval << 24);
        }
        return hval;
    }
};

// x86_64
template<bool x86_64>
struct basic_fnv1a<x86_64, 8>
{
    using hash_type = typename basic_fnv1a_result<x86_64>::x64;
    constexpr static auto salt = hash_type{ 0xcbf29ce484222325ull };

    constexpr auto operator()(const char *ptr) const noexcept
    {
        auto hval = salt;
        while (*ptr != '\0')
        {
            hval ^= static_cast<std::size_t>(*ptr++);
            hval += (hval << 1) + (hval << 4) + (hval << 5) +
                (hval << 7) + (hval << 8) + (hval << 40);
        }
        return hval;
    }

    auto operator()(std::size_t& len, const char *ptr) const noexcept
    {
        auto hval = salt;
        const char *p = ptr;
        while (*p != '\0')
        {
            hval ^= static_cast<std::size_t>(*p++);
            hval += (hval << 1) + (hval << 4) + (hval << 5) +
                (hval << 7) + (hval << 8) + (hval << 40);
        }
        len = static_cast<std::size_t>(p - ptr);
        return hval;
    }

    constexpr auto operator()(const char *p, const char *e) const noexcept
    {
        auto hval = salt;
        while (p < e)
        {
            hval ^= static_cast<std::size_t>(*p++);
            hval += (hval << 1) + (hval << 4) + (hval << 5) +
                (hval << 7) + (hval << 8) + (hval << 40);
        }
        return hval;
    }

    constexpr auto operator()(const char *ptr, std::size_t len) const noexcept
    {
        auto p = static_cast<const char*>(ptr);
        return this->operator()(p, p + len);
    }

    template<class T>
    constexpr static auto calc_hash(typename T::const_iterator p,
        typename T::const_iterator e) noexcept
    {
        auto hval = salt;
        while (p < e)
        {
            hval ^= static_cast<std::size_t>(*p++);
            hval += (hval << 1) + (hval << 4) + (hval << 5) +
                (hval << 7) + (hval << 8) + (hval << 40);
        }
        return hval;
    }
};

using fnv1a = basic_fnv1a<sizeof(std::size_t) == sizeof(std::uint64_t),
    sizeof(std::size_t)>;

template<class T>
constexpr static auto get_hash(const T& text) noexcept
{
    return fnv1a::calc_hash<T>(text.begin(), text.end());
}

} // namespace stomptalk
