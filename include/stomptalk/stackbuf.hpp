#pragma once

#include <utility>
#include <iterator>

namespace stomptalk {

template<class T, std::size_t Size>
class stackbuf
{
    T buf_[Size];
    T* curr_{buf_};

public:
    stackbuf() = default;

    auto pop() noexcept
    {
        auto rc = std::make_pair(buf_,
            std::distance(buf_, curr_));

        curr_ = buf_;

        return rc;
    }

    void reset() noexcept
    {
        curr_ = buf_;
    }

    bool push(T ch) noexcept
    {
        auto b = buf_;
        auto e = b + sizeof(buf_);
        auto c = curr_;

        if (c < e)
            *curr_++ = ch;
        else
            curr_ = b;

        return c < curr_;
    }
};

} // namespace stomptalk
