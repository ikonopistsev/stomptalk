#include "stomptalk/parser_hook.hpp"
#include "stomptalk/antoull.hpp"
#include "stomptalk/antoull.h"

namespace stomptalk {

void parser_hook::reset() noexcept
{
    no_error();
    content_len_ = 0u;

    using namespace header;
    next_ = num_id::none;
    mask_ = mask_id::none;
}

void parser_hook::on_frame(const char *frame_start) noexcept
{
    hook_.on_frame(*this, frame_start);
}

void parser_hook::on_method(std::string_view text) noexcept
{
    hook_.on_method(*this, text);
}

void parser_hook::on_hdr_key(std::string_view text) noexcept
{
    using namespace header;
    using content_length = tag::content_length;
// нам важен только размер контента
// прверяем встречается ли хидер первый раз
// http://stomp.github.io/stomp-specification-1.2.html#Repeated_Header_Entries
// If a client or a server receives repeated frame header entries,
// only the first header entry SHOULD be used as the value of header entry.
    if ((!(mask_ & mask_id::content_length)) &&
        (text.size() == content_length::text_size))
        next_ = detect(content_length(), text);

    hook_.on_hdr_key(*this, text);
}

void parser_hook::on_hdr_val(std::string_view text) noexcept
{
    using namespace header;
    // проверяем ожидали ли content_length
    if (next_ == num_id::content_length)
    {
        // выставляем маску найденого хидера
        mask_ |= mask_id::content_length;

        // парсим размер
        auto content_len = stomptalk::antoull(text);
        if (content_len > 0ll)
            content_len_ = static_cast<std::uint64_t>(content_len);
        else
        {
            inval_content_size();
            return;
        }

        // пока ожидаем только один хидер
        // можно оставить внутри условия
        next_ = num_id::none;
    }

    hook_.on_hdr_val(*this, text);
}

void parser_hook::on_body(const void* ptr, std::size_t size) noexcept
{
    hook_.on_body(*this, ptr, size);
}

void parser_hook::on_frame_end(const char *frame_end) noexcept
{
    hook_.on_frame_end(*this, frame_end);
}

void parser_hook::no_error() noexcept
{
    error_ = error::none;
}

void parser_hook::too_big() noexcept
{
    error_ = error::too_big;
}

void parser_hook::inval_reqline() noexcept
{
    error_ = error::inval_reqline;
}

void parser_hook::inval_method() noexcept
{
    error_ = error::inval_method;
}

void parser_hook::inval_frame() noexcept
{
    error_ = error::inval_frame;
}

void parser_hook::inval_content_size() noexcept
{
    error_ = error::inval_content_size;
}

void parser_hook::next_frame() noexcept
{
    error_ = error::next_frame;
}

void parser_hook::generic_error() noexcept
{
    error_ = error::generic;
}

std::string_view parser_hook::error_str() const noexcept
{
    static constexpr std::string_view str[] = {
        "none", "stack overflow", "invalid request line",
        "invalid method", "invalid frame", "inval content size",
        "call next frame", "generic error"
    };

    return (error_ >= error::generic) ?
        str[error::generic] : str[error_];
}

} // stomptalk

int64_t stomptalk_antoull(const char *text, size_t len)
{
    return static_cast<int64_t>(stomptalk::antoull(text, len));
}
