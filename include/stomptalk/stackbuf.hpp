#pragma once

#include <utility>
#include <iterator>

namespace stomptalk {

template<class T, std::size_t Size>
class stackbuf
{
    static_assert(Size > 0);

    T buf_[Size];
    T* curr_{buf_};

public:
    stackbuf() = default;

    [[nodiscard]] std::pair<T*, std::size_t> pop() noexcept
    {
        auto len = static_cast<std::size_t>(curr_ - buf_);
        curr_ = buf_;
        return { buf_, len };
    }

    void reset() noexcept
    {
        curr_ = buf_;
    }

    bool push(T ch) noexcept
    {
        auto b = buf_;
        auto e = b + Size;
        auto c = curr_;

        if (c < e)
            *curr_++ = ch;
        else
            curr_ = b;

        return c < curr_;
    }
};

} // namespace stomptalk
