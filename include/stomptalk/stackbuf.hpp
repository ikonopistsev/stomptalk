#pragma once

#include <cstdint>

namespace stomptalk {

template<std::size_t sz>
class stackbuf
{
    char buf_[sz];
    char* curr_{ buf_ };

public:
    stackbuf() = default;

    void reset() noexcept
    {
        curr_ = buf_;
    }

    const char* begin() const noexcept
    {
        return buf_;
    }

    const char* end() const noexcept
    {
        return curr_;
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

    const char *data() const noexcept
    {
        return buf_;
    }

    std::size_t size() const noexcept
    {
        return static_cast<std::size_t>(end() - begin());
    }
};

} // namespace stomptalk
