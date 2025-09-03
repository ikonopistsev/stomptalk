#pragma once

#include <utility>
#include <iterator>
#include <cstring>
#include <algorithm>

namespace stomptalk {

template<class T, std::size_t Size>
class stackbuf
{
    static_assert(Size > 0, "Buffer size must be positive");
    static_assert(std::is_trivially_copyable<T>::value,
                  "stackbuf<T> requires trivially copyable T");
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

    STOMPTALK_FORCE_INLINE
    bool push(T ch) noexcept
    {
        auto e = buf_ + Size;
        if (curr_ < e) {
            *curr_++ = ch;
            return true;
        }

        curr_ = buf_;
        return false;
    }

    STOMPTALK_FORCE_INLINE
    bool push(const T* ptr, std::size_t len) noexcept 
    {
        auto e = buf_ + Size;
        auto avail = static_cast<std::size_t>(e - curr_);
        if (len > avail) 
        { 
            curr_ = buf_; 
            return false; 
        }

        std::memcpy(curr_, ptr, len);
        curr_ += len;
        return true;
    }    
};

} // namespace stomptalk
