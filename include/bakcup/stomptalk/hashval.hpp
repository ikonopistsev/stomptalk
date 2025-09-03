#pragma once

#include "stomptalk/fnv1a.hpp"

namespace stomptalk {

template<class T>
struct hashval;

template<>
struct hashval<char>
{
    using type = fnv1a::type;
    type value_{fnv1a::offset};

    ST_FORCE_INLINE void reset(type salt = fnv1a::offset) noexcept
    {
        value_ = salt;
    }

    ST_FORCE_INLINE auto pop(type salt = fnv1a::offset) noexcept
    {
        auto rc = value_;
        value_ = salt;
        return rc;
    }

    ST_FORCE_INLINE void push(char ch) noexcept
    {
        value_ = fnv1a::calc(ch, value_);
    }

    ST_FORCE_INLINE void push(const char* ptr, std::size_t n) noexcept
    {
        value_ = fnv1a::calc_hash(ptr, ptr + n, value_);
    }    
};

} // namespace stomptalk
