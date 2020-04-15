#pragma once

#include <cstdint>
#include "stomptalk/strref.hpp"

namespace stomptalk {

template<std::size_t Size>
class stackbuf
{
    char buf_[Size];
    char* curr_{ buf_ };

public:
    stackbuf() = default;

    strref pop() noexcept
    {
        auto size = static_cast<std::size_t>(curr_ - buf_);
        curr_ = buf_;
        return strref(buf_, size);
    }

    void reset() noexcept
    {
        curr_ = buf_;
    }

    bool push(char ch) noexcept
    {
        auto b = buf_;
        auto e = b + sizeof (buf_);
        auto c = curr_;

        if (c < e)
            *curr_++ = ch;
        else
            curr_ = b;

        return c < curr_;
    }
};

} // namespace stomptalk
