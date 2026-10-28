#pragma once
#include "stomptalk/type.h"
#include <cassert>
#include <cstring>
namespace stomptalk {
// Parser-private storage. reserve() accounts for borrowed and copied bytes
// before accepting input; push() only writes into that reserved space.
class stackbuf {
    char *begin_, *curr_, *end_;
public:
    stackbuf(char *data, size_t capacity) noexcept
        : begin_(data), curr_(data), end_(data + capacity) {}
    char *data() const noexcept { return begin_; }
    char *next() const noexcept { return curr_; }
    size_t size() const noexcept { return static_cast<size_t>(curr_ - begin_); }
    size_t available() const noexcept { return static_cast<size_t>(end_ - curr_); }
    void reset() noexcept { curr_ = begin_; }
    void retain(size_t offset) noexcept {
        assert(offset <= size());
        const size_t count = size() - offset;
        std::memmove(begin_, begin_ + offset, count);
        curr_ = begin_ + count;
    }
    STOMPTALK_FORCE_INLINE void push(char ch) noexcept {
        assert(curr_ < end_);
        *curr_++ = ch;
    }
    STOMPTALK_FORCE_INLINE void push(const char *data, size_t size) noexcept {
        assert(data && size <= available());
        std::memcpy(curr_, data, size);
        curr_ += size;
    }
};
}
