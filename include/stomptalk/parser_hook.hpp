#pragma once

#include "stomptalk/antoull.hpp"
#include "stomptalk/parser.h"
#include <cstddef>
#include <cstdint>
#include <cstring>

namespace stomptalk {

// Логика вокруг каллбеков H: это прямые вызовы, которые встраиваются в парсер.
// Метод, ключ и значение действительны только во время своего каллбека: они указывают
// либо во входной буфер, либо в буфер парсера, который занимает следующий элемент.
template<class H>
class parser_hook
{
protected:
    H& hook_;
    std::uint64_t content_left_{};
    // header 'content-length' data
    std::uint64_t content_length_{};
    bool expect_content_length_{};
    bool has_content_length_{};
    stomptalk_error error_{stomptalk_error_none};

public:
    parser_hook(H& hook) noexcept
        : hook_{hook}
    {   }

    void reset() noexcept
    {
        content_left_ = 0u;
        content_length_ = 0u;
        expect_content_length_ = false;
        has_content_length_ = false;
        error_ = stomptalk_error_none;
    }

    void set(std::uint64_t content_left) noexcept
    {
        content_left_ = content_left;
    }

    // content-length:0 тоже считается заданной длиной
    bool has_content_length() const noexcept
    {
        return has_content_length_;
    }

    std::uint64_t content_length() const noexcept
    {
        return content_length_;
    }

    void set(stomptalk_error error) noexcept
    {
        error_ = error;
    }

    std::uint64_t content_left() const noexcept
    {
        return content_left_;
    }

    stomptalk_error error() const noexcept
    {
        return error_;
    }

    bool ok() const noexcept
    {
        return error() == stomptalk_error_none;
    }

    void on_frame(const char *frame_start) noexcept
    {
        hook_.on_frame(*this, frame_start);
    }

    void on_method(const char *at, std::size_t len) noexcept
    {
        hook_.on_method(*this, at, len);
    }

    void on_hdr_key(const char *at, std::size_t len) noexcept
    {
    // нам важен только размер контента
    // прверяем встречается ли хидер первый раз
    // http://stomp.github.io/stomp-specification-1.2.html#Repeated_Header_Entries
    // If a client or a server receives repeated frame header entries,
    // only the first header entry SHOULD be used as the value of header entry.
        if ((len == 14) && !has_content_length_ &&
            (std::memcmp(at, "content-length", 14) == 0))
        {
            expect_content_length_ = true;
        }

        hook_.on_hdr_key(*this, at, len);
    }

    template<class P>
    void on_hdr_key(P p) noexcept
    {
        on_hdr_key(p.first, p.second);
    }

    void on_hdr_val(const char *at, std::size_t len) noexcept
    {
        // проверяем ожидали ли content_length
        if (expect_content_length_)
        {
            // парсим размер
            auto content_len = stomptalk::antoull(at, len);
            if (content_len >= 0ll)
            {
                content_length_ = content_left_ = static_cast<std::uint64_t>(content_len);
                has_content_length_ = true;
            }
            else
            {
                set(stomptalk_error_inval_content_size);
                return;
            }

            expect_content_length_ = false;
        }

        hook_.on_hdr_val(*this, at, len);
    }

    template<class P>
    void on_hdr_val(P p) noexcept
    {
        on_hdr_val(p.first, p.second);
    }

    void on_body(const void* ptr, std::size_t size) noexcept
    {
        hook_.on_body(*this, ptr, size);
    }

    void on_frame_end(const char *frame_end) noexcept
    {
        hook_.on_frame_end(*this, frame_end);
    }
};

} // stomptalk
