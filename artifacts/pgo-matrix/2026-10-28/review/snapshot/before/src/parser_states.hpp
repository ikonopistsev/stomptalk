// Shared tailcall tree; instantiate only the backends belonging to this TU.
#pragma once

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::start_state(pointer curr, pointer end) noexcept {
    while (curr < end) {
        const unsigned char ch = static_cast<unsigned char>(*curr);
        if (ch == '\n') { ++curr; continue; }
        if (ch == '\r') return tailcall(&parser::start_cr<B>, curr + 1, end);
        if (ch < 'A' || ch > 'Z') return fail(STOMPTALK_ERROR_METHOD, curr);
        if (frame_count_ == config_.frame_capacity) {
            status_ = STOMPTALK_PARSE_OUTPUT_FULL;
            return curr;
        }
        current_ = {};
        key_ = token_ = {nullptr, 0};
        token_owned_ = escape_ = literal_ = length_header_ = begun_ = false;
        active_ = true;
        active_bytes_ = 0;
        byte_begin_ = bytes_.size();
        header_begin_ = header_used_;
        return tailcall(&parser::method_state<B>, curr, end);
    }
    return curr;
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::start_cr(pointer curr, pointer end) noexcept {
    if (*curr != '\n') return fail(STOMPTALK_ERROR_EOL, curr);
    return tailcall(&parser::start_state<B>, curr + 1, end);
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::method_state(pointer curr, pointer end) noexcept {
    pointer p = curr;
    // Short commands stay scalar; SIMD header scanning does not imply SIMD IDs.
    while (p < end && *p >= 'A' && *p <= 'Z') ++p;
    if (!append(curr, static_cast<size_t>(p - curr))) return stop_;
    if (p == end) return p;
    const char ch = *p;
    if (ch != '\n' && ch != '\r') return fail(STOMPTALK_ERROR_METHOD, p);
    current_.method_text = finish_token();
    current_.parsed.method_id = detail::detect_method(current_.method_text);
    literal_ = current_.parsed.method_id == STOMPTALK_METHOD_CONNECT ||
               current_.parsed.method_id == STOMPTALK_METHOD_CONNECTED;
    return ch == '\n' ? tailcall(&parser::hdrline_done<B>, p + 1, end)
                      : tailcall(&parser::hdrline_almost_done<B>, p + 1, end);
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::hdrline_done(pointer curr, pointer end) noexcept {
    if (*curr == '\n') return tailcall(&parser::done<B>, curr + 1, end);
    if (*curr == '\r') return tailcall(&parser::almost_done<B>, curr + 1, end);
    if (current_.parsed.header_count == config_.max_headers_per_frame)
        return fail(STOMPTALK_ERROR_HEADER_LIMIT, curr);
    if (header_used_ == config_.header_capacity) {
        assert(frame_count_ && header_begin_);
        status_ = STOMPTALK_PARSE_OUTPUT_FULL;
        return curr;
    }
    // The first byte goes through exactly the same decoder as all others.
    return tailcall(&parser::hdrline_hdr_key<B>, curr, end);
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::hdrline_hdr_key(pointer curr, pointer end) noexcept {
    while (curr < end) {
        if (escape_) {
            char ch = *curr;
            switch (ch) {
            case 'n': ch = '\n'; break;
            case 'r': ch = '\r'; break;
            case 'c': ch = ':'; break;
            case '\\': break;
            default: return fail(STOMPTALK_ERROR_ESCAPE, curr);
            }
            if (!append(ch, curr)) return stop_;
            escape_ = false;
            ++curr;
            continue;
        }
        const pointer p = detail::backend::engine<B>::scan_header(curr, end, true, literal_);
        // Copy/borrow the entire clean range, including all preceding SIMD blocks.
        if (!append(curr, static_cast<size_t>(p - curr))) return stop_;
        if (p == end) return p;
        if (*p == '\\' && !literal_) {
            own_token();
            escape_ = true;
            curr = p + 1;
            continue;
        }
        if (*p != ':' || !token_.size) return fail(STOMPTALK_ERROR_HEADER, p);
        key_ = finish_token();
        length_header_ = !(current_.parsed.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH) &&
            detail::is_content_length<B>(key_);
        return tailcall(&parser::hdrline_val<B>, p + 1, end);
    }
    return curr;
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::hdrline_val(pointer curr, pointer end) noexcept {
    while (curr < end) {
        if (escape_) {
            char ch = *curr;
            switch (ch) {
            case 'n': ch = '\n'; break;
            case 'r': ch = '\r'; break;
            case 'c': ch = ':'; break;
            case '\\': break;
            default: return fail(STOMPTALK_ERROR_ESCAPE, curr);
            }
            if (!append(ch, curr)) return stop_;
            escape_ = false;
            ++curr;
            continue;
        }
        const pointer p = detail::backend::engine<B>::scan_header(curr, end, false, literal_);
        if (!append(curr, static_cast<size_t>(p - curr))) return stop_;
        if (p == end) return p;
        if (*p == '\\' && !literal_) {
            own_token();
            escape_ = true;
            curr = p + 1;
            continue;
        }
        const char ch = *p;
        if (ch != '\r' && ch != '\n') return fail(STOMPTALK_ERROR_HEADER, p);
        if (!finish_value(p)) return stop_;
        return ch == '\n' ? tailcall(&parser::hdrline_done<B>, p + 1, end)
                         : tailcall(&parser::hdrline_almost_done<B>, p + 1, end);
    }
    return curr;
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::hdrline_almost_done(pointer curr, pointer end) noexcept {
    if (*curr != '\n') return fail(STOMPTALK_ERROR_EOL, curr);
    return tailcall(&parser::hdrline_done<B>, curr + 1, end);
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::almost_done(pointer curr, pointer end) noexcept {
    if (*curr != '\n') return fail(STOMPTALK_ERROR_EOL, curr);
    return tailcall(&parser::done<B>, curr + 1, end);
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::done(pointer curr, pointer end) noexcept {
    // A leading NUL is data when a positive content-length is present.
    if (current_.parsed.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH)
        return tailcall(&parser::body_read<B>, curr, end);
    return tailcall(&parser::body_read_no_length<B>, curr, end);
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::body_read(pointer curr, pointer end) noexcept {
    const uint64_t left = current_.parsed.content_length - current_.parsed.payload_offset;
    const size_t count = static_cast<size_t>((std::min)(left, uint64_t(end - curr)));
    current_.payload = reinterpret_cast<const unsigned char *>(curr);
    current_.parsed.payload_size = count;
    curr += count;
    if (count == left) return tailcall(&parser::frame_end<B>, curr, end);
    return curr;
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::body_read_no_length(pointer curr, pointer end) noexcept {
    if (*curr == '\0') return tailcall(&parser::frame_end<B>, curr, end);
    const pointer nul = static_cast<pointer>(std::memchr(curr, 0, size_t(end - curr)));
    const size_t count = static_cast<size_t>((nul ? nul : end) - curr);
    if (!check_body(count, curr)) return stop_;
    current_.payload = reinterpret_cast<const unsigned char *>(curr);
    current_.parsed.payload_size = count;
    if (nul) return tailcall(&parser::frame_end<B>, nul, end);
    return end;
}

template<stomptalk_backend B>
STOMPTALK_STATE_TARGET
parser::pointer parser::frame_end(pointer curr, pointer end) noexcept {
    if (*curr != '\0') return fail(STOMPTALK_ERROR_TERMINATOR, curr);
    publish(true);
    return tailcall(&parser::start_state<B>, curr + 1, end);
}
