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
    size_t active_bytes_{0};
    bool active_{false}, begun_{false}, escape_{false}, literal_{false};
    bool length_header_{false}, token_owned_{false};
    stomptalk_parse_status status_{STOMPTALK_PARSE_OK};
    stomptalk_error_code error_{STOMPTALK_ERROR_NONE};
    size_t error_offset_{0};
    pointer begin_{nullptr}, stop_{nullptr}; // only valid during run()

    pointer fail(stomptalk_error_code, pointer) noexcept;
    bool reserve(size_t, pointer) noexcept;
    bool append(pointer, size_t) noexcept;
    bool append(char, pointer) noexcept;
    void own(stomptalk_view &) noexcept;
    void own_metadata() noexcept;
    void own_token() noexcept;
    stomptalk_view finish_token() noexcept;
    void recycle() noexcept;
    void publish(bool complete) noexcept;
    bool finish_value(pointer) noexcept;
    bool check_body(size_t, pointer) noexcept;

    STOMPTALK_FORCE_INLINE pointer tailcall(state_type next, pointer p, pointer end) noexcept {
        state_ = next;
#if defined(__OPTIMIZE__) && !defined(STOMPTALK_TRAMPOLINE) && !defined(__SANITIZE_ADDRESS__)
        if (p < end && status_ == STOMPTALK_PARSE_OK)
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
    template<stomptalk_backend B> pointer hdrline_hdr_key(pointer, pointer) noexcept;
    template<stomptalk_backend B> pointer hdrline_val(pointer, pointer) noexcept;
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
