#include "stomptalk/parser_hook.hpp"
#include "stomptalk/antoull.hpp"
#include "stomptalk/antoull.h"
#include "stomptalk/tag/header.hpp"

namespace stomptalk {

void parser_hook::reset() noexcept
{
    no_error();
    content_len_ = 0u;
    next_ = st_header_none;
    mask_ = 0u;
}

void parser_hook::on_frame(const char *frame_start) noexcept
{
    hook_.on_frame(*this, frame_start);
}

void parser_hook::on_method(std::uint64_t id, std::string_view text) noexcept
{
    hook_.on_method(*this, id, text);
}

void parser_hook::on_hdr_key(std::uint64_t id, std::string_view text) noexcept
{
    using namespace header;
    using content_length = tag::content_length;
// нам важен только размер контента
// прверяем встречается ли хидер первый раз
// http://stomp.github.io/stomp-specification-1.2.html#Repeated_Header_Entries
// If a client or a server receives repeated frame header entries,
// only the first header entry SHOULD be used as the value of header entry.
    // if ((!(mask_ & mask_id::content_length)) &&
    //     (text.size() == content_length::text_size))
    //     next_ = detect(content_length(), text);

    hook_.on_hdr_key(*this, id, text);
}

void parser_hook::on_hdr_val(std::string_view text) noexcept
{
    using namespace header::tag;
    // проверяем ожидали ли content_length
    if (next_ == content_length::num)
    {
        // выставляем маску найденого хидера
        mask_ |= content_length::mask;

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
        next_ = st_header_none;
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

size_t stomptalk_antoll(int64_t *res, const char *text, size_t len)
{
    assert(res);

    if (text && len)
    {
        size_t minus = 0;

        if (*text == '-')
        {
            minus = 1;
            ++text;
            --len;
        }

        auto num = static_cast<int64_t>(stomptalk::antoull(text, len));
        if (num)
        {
            *res = minus ? -num : num;
            return 1;
        }
    }

    return 0;
}

const char* stomptalk_trim(const char *text, size_t *len)
{
    size_t l = *len;
    while (l && (*text == ' '))
        ++text, --l;

    if (l && text)
    {
        const char *last = text + l  - 1;
        while ((text != last) && (*last == ' '))
            --last, --l;

        *len = l;
        return text;
    }

    *len = 0;
    return nullptr;
}
