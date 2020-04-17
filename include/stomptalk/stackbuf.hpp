#pragma once

#include "stomptalk/strref.hpp"
#include <string_view>

namespace stomptalk {

template<std::size_t Size>
class stackbuf
{
    char buf_[Size];
    char* curr_{ buf_ };

public:
    stackbuf() = default;

    std::string_view pop() noexcept
    {
        std::string_view rc(buf_,
            std::distance(buf_, curr_));

        curr_ = buf_;

        return rc;
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
