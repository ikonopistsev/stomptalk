#pragma once
#include "stomptalk/type.h"
#include <cstring>
namespace stomptalk {
// Append-only caller-owned bytes. Failed push resets the cursor, not bytes.
// Resumable output_full must check capacity before calling push.
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
        const size_t count = size() - offset;
        if (offset && count) std::memmove(begin_, begin_ + offset, count);
        curr_ = begin_ + count;
    }
    STOMPTALK_FORCE_INLINE bool push(char ch) noexcept {
        if (curr_ < end_) { *curr_++ = ch; return true; }
        curr_ = begin_;
        return false;
    }
    STOMPTALK_FORCE_INLINE bool push(const char *data, size_t size) noexcept {
        if (size > available()) { curr_ = begin_; return false; }
        if (size) std::memcpy(curr_, data, size);
        curr_ += size;
        return true;
    }
};
}
