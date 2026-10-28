#pragma once
// One core TU exposes helpers and tailcall states to the C API optimizer.
// Derived from 123/backup/parser.cpp: small state functions and tailcall tree.
#include "stomptalk/parser.hpp"
#include "stomptalk/antoull.hpp"
#include "methods.hpp"
#include "is_header.hpp"
#include <algorithm>
#include <cassert>
#include <cstdint>
#include <limits>

namespace stomptalk {

parser::parser(const stomptalk_parser_config &config, stomptalk_frame_view *frames,
    stomptalk_header_view *headers, char *bytes, stomptalk_backend backend) noexcept
    : config_(config), frames_(frames), headers_(headers), bytes_(bytes, config.byte_capacity),
      backend_(backend) { reset(); }

void parser::reset() noexcept {
    bytes_.reset();
    frame_count_ = header_used_ = header_begin_ = byte_begin_ = 0;
    byte_left_ = config_.byte_capacity;
    current_ = {};
    key_ = token_ = {nullptr, 0};
    active_ = begun_ = escape_ = literal_ = length_header_ = token_owned_ = false;
    error_ = STOMPTALK_ERROR_NONE;
    status_ = STOMPTALK_PARSE_OK;
    error_offset_ = 0;
    begin_ = stop_ = nullptr;
    switch (backend_) {
    case STOMPTALK_BACKEND_SWAR: state_ = &parser::start_state<STOMPTALK_BACKEND_SWAR>; break;
#if STOMPTALK_SSE2
    case STOMPTALK_BACKEND_SSE2: state_ = &parser::start_state<STOMPTALK_BACKEND_SSE2>; break;
#endif
#if STOMPTALK_PARSER_AVX2
    case STOMPTALK_BACKEND_AVX2: state_ = avx2_state(); break;
#endif
    default: state_ = &parser::start_state<STOMPTALK_BACKEND_SCALAR>; break;
    }
}

parser::pointer parser::fail(stomptalk_error_code error, pointer at) noexcept {
    error_ = error;
    status_ = STOMPTALK_PARSE_ERROR;
    error_offset_ = static_cast<size_t>(at - begin_);
    return stop_ = at + 1;
}

// One limit check on the successful path. Only a failed reservation needs to
// distinguish a frame limit from space occupied by earlier completed records.
bool parser::reserve(size_t count, pointer at) noexcept {
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

void parser::own(stomptalk_view &v) noexcept {
    assert(v.size || !v.data);
    if (!v.size) return;
    const uintptr_t offset = reinterpret_cast<uintptr_t>(v.data) -
                             reinterpret_cast<uintptr_t>(bytes_.data());
    if (offset < config_.byte_capacity) return;
    char *dest = bytes_.next();
    bytes_.push(v.data, v.size);
    v.data = dest;
}

void parser::own_metadata() noexcept {
    own(current_.method_text);
    for (size_t i = header_begin_; i < header_used_; ++i) {
        own(headers_[i].key);
        own(headers_[i].value);
    }
    own(key_);
}

void parser::own_token() noexcept {
    if (token_owned_) return;
    own_metadata(); // the open string must remain last in the accumulator
    char *dest = bytes_.next();
    if (token_.size) bytes_.push(token_.data, token_.size);
    token_.data = dest;
    token_owned_ = true;
}

bool parser::append(pointer data, size_t count) noexcept {
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

bool parser::append(char value, pointer source) noexcept {
    assert(token_owned_); // the backslash path already promoted the token
    if (!reserve(1, source)) return false;
    bytes_.push(value);
    ++token_.size;
    return true;
}

stomptalk_view parser::finish_token() noexcept {
    assert(token_.size || !token_.data); // an empty owned token is awaiting an escape byte
    const stomptalk_view result = token_;
    token_ = {nullptr, 0};
    token_owned_ = false;
    return result;
}

void parser::recycle() noexcept {
    frame_count_ = 0;
    current_.payload = nullptr;
    current_.parsed.payload_size = 0;
    if (!active_) {
        bytes_.reset();
        header_used_ = header_begin_ = byte_begin_ = 0;
        return;
    }
    assert(header_begin_ <= header_used_);
    const size_t count = header_used_ - header_begin_;
    if (header_begin_)
        std::memmove(headers_, headers_ + header_begin_, count * sizeof(*headers_));
    header_used_ = count;
    header_begin_ = 0;
    // All persistent active views were promoted before the preceding return.
    if (byte_begin_) {
        auto shift = [this](stomptalk_view &v) {
            if (v.data) v.data -= byte_begin_;
        };
        shift(current_.method_text);
        shift(key_);
        shift(token_);
        for (size_t i = 0; i < count; ++i) {
            shift(headers_[i].key);
            shift(headers_[i].value);
        }
        bytes_.retain(byte_begin_);
        byte_left_ += byte_begin_;
        byte_begin_ = 0;
    }
    assert(byte_left_ == bytes_.available());
}

void parser::publish(bool complete) noexcept {
    assert(frame_count_ < config_.frame_capacity);
    current_.headers = current_.parsed.header_count ? headers_ + header_begin_ : nullptr;
    current_.parsed.flags &= STOMPTALK_FRAME_HAS_CONTENT_LENGTH;
    if (!begun_) current_.parsed.flags |= STOMPTALK_FRAME_BEGIN;
    if (complete) current_.parsed.flags |= STOMPTALK_FRAME_COMPLETE;
    frames_[frame_count_++] = current_;
    current_.parsed.payload_offset += current_.parsed.payload_size;
    current_.payload = nullptr;
    current_.parsed.payload_size = 0;
    begun_ = true;
    if (complete) active_ = false;
}

bool parser::finish_value(pointer eol) noexcept {
    const stomptalk_view value = finish_token();
    if (length_header_) {
        uint64_t length;
        if (!antoull(length, value.data, value.size)) {
            fail(STOMPTALK_ERROR_CONTENT_LENGTH, eol);
            return false;
        }
        if (length > config_.max_body_size) {
            fail(STOMPTALK_ERROR_BODY_LIMIT, eol);
            return false;
        }
        current_.parsed.content_length = length;
        current_.parsed.flags |= STOMPTALK_FRAME_HAS_CONTENT_LENGTH;
    }
    headers_[header_used_++] = {key_, value};
    ++current_.parsed.header_count;
    key_ = {nullptr, 0};
    length_header_ = false;
    return true;
}

bool parser::check_body(size_t count, pointer source) noexcept {
    if (count > config_.max_body_size - current_.parsed.payload_offset) {
        fail(STOMPTALK_ERROR_BODY_LIMIT,
             source + static_cast<size_t>(config_.max_body_size - current_.parsed.payload_offset));
        return false;
    }
    return true;
}

// Baseline states stay usable on CPUs without AVX2.
#include "parser_states.hpp"

stomptalk_parse_result parser::run(pointer data, size_t size) noexcept {
    if (error_) return {0, frames_, 0, STOMPTALK_PARSE_ERROR, error_, 0};
    recycle();
    status_ = STOMPTALK_PARSE_OK;
    error_offset_ = 0;
    if ((!data && size) || size > size_t(PTRDIFF_MAX)) {
        error_ = STOMPTALK_ERROR_ARGUMENT;
        return {0, frames_, 0, STOMPTALK_PARSE_ERROR, error_, 0};
    }
    pointer curr = data;
    begin_ = data;
    if (size) {
        const pointer end = data + size;
        while (curr < end && status_ == STOMPTALK_PARSE_OK)
            curr = (this->*state_)(curr, end);
    }
    if (status_ != STOMPTALK_PARSE_ERROR && active_) {
        // An owned open token already has all earlier metadata before it.
        // BEGIN is published only after promotion, so body continuations also
        // need no repeated walk of the same header views.
        if (!begun_) {
            if (token_.size || token_owned_) own_token();
            else own_metadata();
        }
        if (current_.parsed.payload_size) publish(false);
    }
    if (status_ == STOMPTALK_PARSE_OK) {
        const bool boundary = state_ == &parser::start_state<STOMPTALK_BACKEND_SCALAR> ||
                              state_ == &parser::start_state<STOMPTALK_BACKEND_SWAR>
#if STOMPTALK_SSE2
                              || state_ == &parser::start_state<STOMPTALK_BACKEND_SSE2>
#endif
#if STOMPTALK_PARSER_AVX2
                              || (backend_ == STOMPTALK_BACKEND_AVX2 && state_ == avx2_state())
#endif
                              ;
        if (!boundary) status_ = STOMPTALK_PARSE_NEED_INPUT;
    }
    const size_t consumed = size ? static_cast<size_t>(curr - data) : 0;
    begin_ = stop_ = nullptr;
    return {consumed, frames_, frame_count_, status_, error_, error_offset_};
}
}
