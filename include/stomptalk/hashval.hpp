#pragma once

#include "stomptalk/fnv1a.hpp"

namespace stomptalk {

template<class T>
struct hashval;

template<>
struct hashval<char>
{
    using type = fnv1a::type;
    type value_{fnv1a::salt};

    void reset(type salt = fnv1a::salt) noexcept
    {
        value_ = salt;
    }

    auto pop(type salt = fnv1a::salt) noexcept
    {
        auto rc = value_;
        value_ = salt;
        return rc;
    }

    void push(char ch) noexcept
    {
        value_ = fnv1a::calc(ch, value_);
    }
};

} // namespace stomptalk
