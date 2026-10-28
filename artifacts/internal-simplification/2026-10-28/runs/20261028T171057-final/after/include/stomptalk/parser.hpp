#pragma once
#include "stomptalk/parser.h"
#include "stomptalk/stackbuf.hpp"

namespace stomptalk {

// State names and tail transitions follow 123/backup/parser.cpp.
// Storage/publication replace its callbacks and per-byte hash accumulator.
class parser {
public:
    using pointer = const char *;
    using state_type = pointer (parser::*)(pointer, pointer);
private:
    stomptalk_parser_config config_;
    stomptalk_frame_view *frames_;
    stomptalk_header_view *headers_;
    stackbuf bytes_;
    stomptalk_backend backend_;
    state_type state_{};
    stomptalk_frame_view current_{};
    stomptalk_view key_{}, token_{};
    size_t frame_count_{0}, header_used_{0}, header_begin_{0}, byte_begin_{0};
    size_t byte_left_{0}; // includes space promised to borrowed active strings
    bool active_{false}, begun_{false}, escape_{false}, literal_{false};
    bool length_header_{false}, token_owned_{false};
    stomptalk_parse_status status_{STOMPTALK_PARSE_OK};
    stomptalk_error_code error_{STOMPTALK_ERROR_NONE};
    size_t error_offset_{0};
    pointer begin_{nullptr}, stop_{nullptr}; // only valid during run()

    pointer fail(stomptalk_error_code, pointer) noexcept;
    // One limit check on the successful path. Only a failed reservation needs to
    // distinguish a frame limit from space occupied by earlier completed records.
    bool reserve(size_t count, pointer at) noexcept {
        if (count <= byte_left_) {
            byte_left_ -= count;
            return true;
        }
        assert(byte_left_ <= config_.byte_capacity - byte_begin_);
        if (count > byte_left_ + byte_begin_) {
            fail(STOMPTALK_ERROR_BYTE_LIMIT, at + byte_left_ + byte_begin_);
        } else {
            assert(frame_count_ && byte_begin_);
            status_ = STOMPTALK_PARSE_OUTPUT_FULL;
            stop_ = at;
        }
        return false;
    }
    bool append(pointer data, size_t count) noexcept {
        if (!count) return true;
        if (!reserve(count, data)) return false;
        if (token_owned_) {
            bytes_.push(data, count);
        } else if (!token_.size) {
            token_.data = data;
        } else {
            assert(token_.data + token_.size == data);
        }
        token_.size += count;
        return true;
    }
    bool append(char value, pointer source) noexcept {
        assert(token_owned_); // the backslash path already promoted the token
        if (!reserve(1, source)) return false;
        bytes_.push(value);
        ++token_.size;
        return true;
    }
    void own(stomptalk_view &) noexcept;
    void own_metadata() noexcept;
    void own_token() noexcept;
    stomptalk_view finish_token() noexcept {
        assert(token_.size || !token_.data); // an empty owned token is awaiting an escape byte
        const stomptalk_view result = token_;
        token_ = {nullptr, 0};
        token_owned_ = false;
        return result;
    }
    void recycle() noexcept;
    void publish(bool complete) noexcept;
    bool finish_value(pointer) noexcept;
    bool check_body(size_t, pointer) noexcept;

    STOMPTALK_FORCE_INLINE pointer tailcall(state_type next, pointer p, pointer end) noexcept {
        assert(status_ == STOMPTALK_PARSE_OK);
        state_ = next;
#if defined(__OPTIMIZE__) && !defined(STOMPTALK_TRAMPOLINE) && !defined(__SANITIZE_ADDRESS__)
        if (p < end)
            return (this->*next)(p, end);
#else
        (void)end;
#endif
        return p;
    }

    static state_type avx2_state() noexcept;
    template<stomptalk_backend B> pointer start_state(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer start_cr(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer method_state(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer hdrline_done(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer hdrline(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer hdrline_almost_done(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer almost_done(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer done(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer body_read(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer body_read_no_length(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer frame_end(pointer, pointer) noexcept;
public:
    parser(const stomptalk_parser_config &, stomptalk_frame_view *,
           stomptalk_header_view *, char *, stomptalk_backend) noexcept;
    void reset() noexcept;
    stomptalk_parse_result run(pointer, size_t) noexcept;
    stomptalk_backend backend() const noexcept { return backend_; }
};
}
