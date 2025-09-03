#pragma once

#include "stomptalk/hook_base.hpp"
#include "stomptalk/antoull.hpp"
#include "stomptalk/parser.h"

namespace stomptalk {

class parser;
class parser_hook
{
protected:
    hook_base& hook_;
    std::uint64_t content_left_{};
    // header 'content-length' data
    std::uint64_t content_length_{};
    std::uint64_t header_id_{};
    stomptalk_error error_{stomptalk_error_none};

public:
    parser_hook(hook_base& hook) noexcept
        : hook_{hook}
    {   }

    void reset() noexcept
    {
        content_left_ = 0u;
        content_length_ = 0u;
        header_id_ = 0u;
        error_ = stomptalk_error_none;
    }

    void set(std::uint64_t content_left) noexcept
    {
        content_left_ = content_left;
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

    std::uint64_t header_id() const noexcept
    {
        return header_id_;
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
    
    void on_method(std::uint64_t method_id, const char *at, std::size_t len) noexcept
    {
        hook_.on_method(*this, method_id, at, len);
    }

    template<class P>
    void on_method(std::uint64_t method_id, P p) noexcept
    {
        on_method(method_id, p.first, p.second);
    }

    void on_hdr_key(std::uint64_t header_id, const char *at, std::size_t len) noexcept
    {
    // нам важен только размер контента
    // прверяем встречается ли хидер первый раз
    // http://stomp.github.io/stomp-specification-1.2.html#Repeated_Header_Entries
    // If a client or a server receives repeated frame header entries,
    // only the first header entry SHOULD be used as the value of header entry.
        if ((st_header_content_length == header_id) && !content_length_)
            header_id_ = header_id;

        hook_.on_hdr_key(*this, header_id, at, len);
    }

    template<class P>
    void on_hdr_key(std::uint64_t header_id, P p) noexcept
    {
        on_hdr_key(header_id, p.first, p.second);
    }

    void on_hdr_val(const char *at, std::size_t len) noexcept
    {
        // проверяем ожидали ли content_length
        if (st_header_content_length == header_id_)
        {
            // парсим размер
            auto content_len = stomptalk::antoull(at, len);
            if (content_len > 0ll)
                content_length_ = content_left_ = static_cast<std::uint64_t>(content_len);
            else
            {
                set(stomptalk_error_inval_content_size);
                return;
            }

            header_id_ = 0u;
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
