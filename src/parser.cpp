#include "stomptalk/parser.hpp"
#include "stomptalk/header.hpp"
#include "stomptalk/parser_hook.hpp"
#include <cstring>
#include <cassert>

namespace stomptalk {

enum eval_hdr_val
{
    eval_hdr_val_none = 0,
    eval_hdr_val_content_length,
    eval_hdr_val_content_type
};

void parser::clear() noexcept
{
    content_len_ = 0;
    orig_content_len_ = 0;
    bytes_read_ = 0;
    total_bytes_read_ = 0;

    state_fn_  = &parser::start_state;
    heval_  = heval::none;

    sbuf_.reset();
}

static inline std::size_t pdist(const char* begin, const char *end) noexcept
{
    return static_cast<std::size_t>(std::distance(begin, end));
}

static inline bool ch_isupper(char ch) noexcept
{
    return ('A' <= ch) && (ch <= 'Z');
    //return 0 == std::isupper(ch);
}

parser::result parser::start_state(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    do {
        auto ch = *curr++;
        // пропускаем символы до первого значимого
        if ((ch == '\r') || (ch == '\n') || (ch == '\0'))
            continue;

        if (!ch_isupper(ch))
            return result(parser_hook::error::inval_reqline, curr);

        content_len_ = 0;
        orig_content_len_ = 0;
        hook.set(parser_hook::error::none);
        hook.set(parser_hook::content::none);

        // вызываем каллбек
        hook.on_begin();

        // сохраняем стек
        if (!sbuf_.push(ch))
            return result(parser_hook::error::too_big, curr);

        // переходим к разбору метода
        state_fn_ = &parser::method_state;
        break;
    } while (curr < end);

    return result(curr);
}

parser::result parser::method_state(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    do {
        auto ch = *curr++;

        if ((ch == '\r') || (ch == '\n'))
        {
            // определяем метод
            auto data = sbuf_.data();
            auto size = sbuf_.size();

            // сбрасываем стек
            sbuf_.reset();

            // переходим к поиску конца метода
            state_fn_ = (ch == '\n') ?
                &parser::method_done : &parser::method_amost_done;

            // вызываем каллбек
            hook.on_method(data, size);

            // выходим из определения метода
            break;
        } else if (!ch_isupper(ch))
            return result(parser_hook::error::inval_method, curr);
        else if (!sbuf_.push(ch))
            return result(parser_hook::error::too_big, curr);

    } while (curr < end);

    return result(curr);
}

parser::result parser::method_amost_done(parser_hook&,
    const char* curr, const char*) noexcept
{
    if (*curr++ != '\n')
        return result(parser_hook::error::inval_reqline, curr);

    // переходим к поиску конца метода
    state_fn_ = &parser::method_done;

    return result(curr);
}

static inline bool ch_isprint(char ch) noexcept
{
    return (ch > 32) && (ch <= 126);
}

static inline bool ch_isprint_nospace(char c) noexcept
{
    return (c > 32) && (c <= 126);
}

parser::result parser::method_done(parser_hook& hook,
    const char* curr, const char*) noexcept
{
    auto ch = *curr++;

    if (!ch_isprint_nospace(ch))
        return result(parser_hook::error::inval_reqline, curr);

    if (!sbuf_.push(ch))
        return result(parser_hook::error::too_big, curr);

    state_fn_ = &parser::hdrline_hdr_key;

    hook.on_hdrs_begin();

    return result(curr);
}

void parser::eval_header(const char* text, std::size_t size) noexcept
{
    header::mask::type rc;
    switch (size)
    {
        case (header::tag::size_of(header::tag::content_length())):
            if (header::tag::detect_header_id(rc,
                header::tag::content_length(), text))
            {
                if (rc == header::mask::content_length)
                    heval_ = heval::content_length;
            }
        break;
        case (header::tag::size_of(header::tag::content_type())):
            if (header::tag::detect_header_id(rc,
                header::tag::content_type(), text))
            {
                if (rc == header::mask::content_type)
                    heval_ = heval::content_type;
            }
        break;
        default:
            heval_ = heval::none;
    }
}

void parser::eval_value(const char* text, std::size_t) noexcept
{
    if (heval_ == heval::content_length)
    {
        content_len_ = static_cast<std::uint64_t>(std::atoll(text));
    }
}

parser::result parser::hdrline_hdr_key(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    do
    {
        auto ch = *curr++;
        if (ch == ':')
        {
            // сохраняем параметры стека
            auto data = sbuf_.data();
            auto size = sbuf_.size();

            sbuf_.reset();

            // определяем значимый ли хидер
            eval_header(data, size);

            state_fn_ = &parser::hdrline_val;

            // выполняем каллбек на хидер
            hook.on_hdr_key(data, size);

            break;
        }
        else
        {
            if (ch == '\r')
            {
                sbuf_.reset();

                state_fn_ = &parser::hdrline_almost_done;
                break;
            }

            if (ch == '\n')
            {
                sbuf_.reset();

                state_fn_ = &parser::hdrline_done;
                break;
            }

            if (!sbuf_.push(ch))
                return result(parser_hook::error::too_big, curr);
        }
    } while (curr < end);

    return result(curr);
}

parser::result parser::hdrline_val(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    do {
        auto ch = *curr++;
        if ((ch == '\r') || (ch == '\n'))
        {
            // сохраняем параметры стека
            auto data = sbuf_.data();
            auto size = sbuf_.size();

            // сбрасываем стек
            sbuf_.reset();

            eval_value(data, size);

            // переходим к поиску конца метода
            state_fn_ = (ch == '\n') ?
                &parser::hdrline_done : &parser::hdrline_almost_done;

            hook.on_hdr_val(data, size);

            break;
        }

        if (!ch_isprint(ch))
            return result(parser_hook::error::inval_method, curr);

        if (!sbuf_.push(ch))
            return result(parser_hook::error::too_big, curr);

    } while (curr < end);

    return result(curr);
}

parser::result parser::hdrline_done(parser_hook& hook,
    const char* curr, const char*) noexcept
{
    auto ch = *curr++;

    // начала боди через
    if ((ch == '\r') || (ch == '\n'))
    {
        // переходим к поиску конца метода
        state_fn_ = (ch == '\n') ?
            &parser::done : &parser::almost_done;

        // выполняем каллбек на хидер
        hook.on_hdrs_end();
    }
    else
    {
        // иначе это следующий хидер
        if (!ch_isprint_nospace(ch))
            return result(parser_hook::error::inval_reqline, curr);

        if (!sbuf_.push(ch))
            return result(parser_hook::error::too_big, curr);

        state_fn_ = &parser::hdrline_hdr_key;
    }

    return result(curr);
}

parser::result parser::hdrline_almost_done(parser_hook&,
    const char* curr, const char*) noexcept
{
    if (*curr++ != '\n')
        return result(parser_hook::error::inval_reqline, curr);

    // переходим к поиску конца метода
    state_fn_ = &parser::hdrline_done;

    return result(curr);
}

parser::result parser::done(parser_hook& hook,
    const char* curr, const char*) noexcept
{
    auto ch = *curr;

    // конец фрейма
    if (ch == '\0')
    {
        state_fn_ = &parser::start_state;

        // сдвигаем курсор
        ++curr;

        // закончили
        hook.on_end();
    }
    else
    {
        // выбираем как будем читать боди
        state_fn_ = (content_len_ > 0) ?
            &parser::body_read : &parser::body_read_no_length;
    }

    return result(curr);
}


parser::result parser::almost_done(parser_hook&,
    const char* curr, const char*) noexcept
{
    if (*curr++ != '\n')
        return result(parser_hook::error::inval_reqline, curr);

    // переходим к поиску конца метода
    state_fn_ = &parser::done;

    return result(curr);
}

parser::result parser::body_read(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    auto to_read = static_cast<std::size_t>(std::distance(curr, end));
    to_read = static_cast<std::size_t>(
        (std::min)(static_cast<std::uint64_t>(to_read), content_len_));

    if (to_read > 0)
    {
        content_len_ -= to_read;

        hook.on_body(curr, to_read);
    }

    curr += to_read;

    if (content_len_ == 0)
        state_fn_ = &parser::frame_end;

    return result(curr);
}

parser::result parser::body_read_no_length(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    const char *beg = curr;
    do {
        if (*curr++ == '\0')
        {
            // если достигли конца переходим к новому фрейму
            state_fn_ = &parser::frame_end;
            // вернемся назад чтобы обработать каллбек
            return result(--curr);
        }
    } while (curr < end);

    // считаем количество данных боди
    auto to_read = static_cast<std::size_t>(std::distance(beg, curr));

    // сообщаем о боди
    hook.on_body(beg, to_read);

    return result(curr);
}

parser::result parser::frame_end(parser_hook& hook,
    const char* curr, const char *) noexcept
{
    // закончили
    hook.on_end();

    state_fn_ = &parser::start_state;
    return (*curr++ != 0) ?
        result(parser_hook::error::inval_frame, curr) : result(curr);
}

std::size_t parser::run(parser_hook& hook,
    const char *begin, std::size_t len) noexcept
{
    hook.set(parser_hook::error::none);

    const char* curr = begin;
    const char* end = begin + len;

    while (curr < end)
    {
        auto rc = (this->*state_fn_)(hook, curr, end);
        curr = rc.position();
        if (!rc.ok())
        {
            hook.set(rc.error());
            break;
        }
    }

    return pdist(begin, curr);
}

}
