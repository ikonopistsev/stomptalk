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

static inline std::size_t distance(const char* begin, const char* end) noexcept
{
    return static_cast<std::size_t>(end - begin);
}

static inline bool ch_isupper(char ch) noexcept
{
    return ('A' <= ch) && (ch <= 'Z');
    //return 0 == std::isupper(ch);
}

const char* parser::start_state(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    do {

        auto ch = *curr++;
        // пропускаем символы до первого значимого
        if ((ch == '\r') || (ch == '\n') || (ch == '\0'))
            continue;

        if (!ch_isupper(ch))
        {
            hook.set(parser_hook::error::inval_reqline);
            return curr;
        }

        content_len_ = 0;
        orig_content_len_ = 0;
        hook.set(parser_hook::error::none);
        hook.set(parser_hook::content::none);

        // вызываем каллбек
        hook.on_begin();

        // сохраняем стек
        if (!sbuf_.push(ch))
        {
            hook.set(parser_hook::error::too_big);
            return curr;
        }

        // переходим к разбору метода
        state_fn_ = &parser::method_state;

        if (curr < end)
            return method_state(hook, curr, end);

        return curr;

    } while (curr < end);

    return curr;
}

const char* parser::method_state(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    do {
        auto ch = *curr++;

        if (ch == '\r')
        {
            // определяем метод
            // вызываем каллбек
            hook.on_method(sbuf_.pop());

            // переходим к поиску конца метода
            state_fn_ = &parser::method_amost_done;

            return (curr < end) ?
                method_amost_done(hook, curr, end) : curr;
        }
        else if (ch == '\n')
        {
            // определяем метод
            // вызываем каллбек
            hook.on_method(sbuf_.pop());

            // переходим к поиску конца метода
            state_fn_ = &parser::method_done;

            return (curr < end) ?
                method_done(hook, curr, end) : curr;
        }
        else if (!ch_isupper(ch))
        {
            hook.set(parser_hook::error::inval_method);
            return curr;
        }
        else if (!sbuf_.push(ch))
        {
            hook.set(parser_hook::error::too_big);
            return curr;
        }

    } while (curr < end);

    return curr;
}

const char* parser::method_amost_done(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    if (*curr++ != '\n')
    {
        hook.set(parser_hook::error::inval_reqline);
        return  curr;
    }

    // переходим к поиску конца метода
    state_fn_ = &parser::method_done;

    return (curr < end) ?
        method_done(hook, curr, end) : curr;
}

static inline bool ch_isprint(char ch) noexcept
{
    return (ch > 32) && (ch <= 126);
}

static inline bool ch_isprint_nospace(char ch) noexcept
{
    return (ch > 32) && (ch <= 126);
}

const char* parser::method_done(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    auto ch = *curr++;

    if (!ch_isprint_nospace(ch))
    {
        hook.set(parser_hook::error::inval_reqline);
        return curr;
    }

    if (!sbuf_.push(ch))
    {
        hook.set(parser_hook::error::too_big);
        return curr;
    }

    state_fn_ = &parser::hdrline_hdr_key;

    return (curr < end) ?
        hdrline_hdr_key(hook, curr, end) : curr;
}

void parser::eval_header(const strref& val) noexcept
{
    header::mask::type rc;
    auto text = val.data();
    auto size = val.size();
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

void parser::eval_value(const strref& val) noexcept
{
    if (heval_ == heval::content_length)
    {
        //content_len_ = str_to_uint64(text, size);
        content_len_ = static_cast<std::uint64_t>(std::atoll(val.data()));
    }
}

const char* parser::hdrline_hdr_key(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    do
    {
        auto ch = *curr++;

        if (ch == ':')
        {
            // сохраняем параметры стека
            auto text = sbuf_.pop();

            // определяем значимый ли хидер
            eval_header(text);

            // выполняем каллбек на хидер
            hook.on_hdr_key(text);

            state_fn_ = &parser::hdrline_val;

            return (curr < end) ?
                hdrline_val(hook, curr, end) : curr;
        }
        else
        {
            if (ch == '\r')
            {
                sbuf_.pop();

                state_fn_ = &parser::hdrline_almost_done;

                return (curr < end) ?
                    hdrline_almost_done(hook, curr, end) : curr;
            }

            if (ch == '\n')
            {
                sbuf_.pop();

                state_fn_ = &parser::hdrline_done;

                return (curr < end) ?
                    hdrline_done(hook, curr, end) : curr;
            }

            if (!sbuf_.push(ch))
            {
                hook.set(parser_hook::error::too_big);

                return curr;
            }
        }

    } while (curr < end);

    return curr;
}

const char* parser::hdrline_val(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    do {
        auto ch = *curr++;

        if (ch == '\r')
        {
            // сохраняем параметры стека
            auto text = sbuf_.pop();

            eval_value(text);

            hook.on_hdr_val(text);

            // переходим к поиску конца метода
            state_fn_ = &parser::hdrline_almost_done;

            return (curr < end) ?
                hdrline_almost_done(hook, curr, end) : curr;
        }
        else if (ch == '\n')
        {
            // сохраняем параметры стека
            auto text = sbuf_.pop();

            eval_value(text);

            hook.on_hdr_val(text);

            // переходим к поиску конца метода
            state_fn_ = &parser::hdrline_done;

            return (curr < end) ?
                hdrline_done(hook, curr, end) : curr;
        }
        else if (!sbuf_.push(ch))
        {
            hook.set(parser_hook::error::too_big);

            return curr;
        }

    } while (curr < end);

    return curr;
}

const char* parser::hdrline_done(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    auto ch = *curr++;

    // начала боди через
    if (ch == '\r')
    {
        // переходим к поиску конца метода
        state_fn_ = &parser::almost_done;

        return (curr < end) ?
            almost_done(hook, curr, end) : curr;
    }
    else if (ch == '\n')
    {
        // переходим к поиску конца метода
        state_fn_ = &parser::done;

        return (curr < end) ?
            done(hook, curr, end) : curr;
    }

    // иначе это следующий хидер
    if (!ch_isprint_nospace(ch))
    {
        hook.set(parser_hook::error::inval_reqline);
        return  curr;
    }

    if (!sbuf_.push(ch))
    {
        hook.set(parser_hook::error::too_big);
        return  curr;
    }

    state_fn_ = &parser::hdrline_hdr_key;

    return curr;
}

const char* parser::hdrline_almost_done(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    if (*curr++ != '\n')
    {
        hook.set(parser_hook::error::inval_reqline);
        return  curr;
    }

    // переходим к поиску конца метода
    state_fn_ = &parser::hdrline_done;

    return (curr < end) ?
        hdrline_done(hook, curr, end) : curr;
}

const char* parser::done(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    auto ch = *curr;

    // конец фрейма
    if (ch == '\0')
    {
        state_fn_ = &parser::start_state;

        // сдвигаем курсор
        ++curr;

        // закончили
        hook.on_frame();
    }
    else
    {
        if (content_len_ > 0)
        {
            // выбираем как будем читать боди
            state_fn_ = &parser::body_read;

            if (curr < end)
                return body_read(hook, curr, end);
        }
        else
        {
            // выбираем как будем читать боди
            state_fn_ = &parser::body_read_no_length;

            if (curr < end)
                return body_read_no_length(hook, curr, end);
        }
    }

    return curr;
}


const char* parser::almost_done(parser_hook& hook,
    const char* curr, const char* end) noexcept
{
    if (*curr++ != '\n')
    {
        hook.set(parser_hook::error::inval_reqline);
        return  curr;
    }

    // переходим к поиску конца метода
    state_fn_ = &parser::done;

    return (curr < end) ?
        done(hook, curr, end) : curr;
}

const char* parser::body_read(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    auto to_read = distance(curr, end);

    to_read = static_cast<std::size_t>(
        (std::min)(static_cast<std::uint64_t>(to_read), content_len_));

    if (to_read > 0)
    {
        content_len_ -= to_read;

        hook.on_body(strref(curr, to_read));
    }

    curr += to_read;

    if (content_len_ == 0)
    {
        state_fn_ = &parser::frame_end;

        if (curr < end)
            return frame_end(hook, curr, end);
    }

    return curr;
}

const char* parser::body_read_no_length(parser_hook& hook,
    const char* curr, const char *end) noexcept
{
    const char *beg = curr;

    do {
        if (*curr++ == '\0')
        {
            // если достигли конца переходим к новому фрейму
            state_fn_ = &parser::frame_end;
            // вернемся назад чтобы обработать каллбек
            --curr;
            break;
        }
    } while (curr < end);

    // считаем количество данных боди
    auto to_read = distance(beg, curr);

    if (to_read > 0)
    {
        // сообщаем о боди
        hook.on_body(strref(beg, to_read));
    }

    return curr;
}

const char* parser::frame_end(parser_hook& hook,
    const char* curr, const char *) noexcept
{
    // закончили
    hook.on_frame();

    state_fn_ = &parser::start_state;

    if (*curr++ != '\0')
        hook.set(parser_hook::error::inval_frame);

    return curr;
}

std::size_t parser::run(parser_hook& hook,
    const char *begin, std::size_t len) noexcept
{
    hook.set(parser_hook::error::none);

    const char* curr = begin;
    const char* end = begin + len;

    while (curr < end)
    {
        curr = (this->*state_fn_)(hook, curr, end);

        if (hook.get_error() != parser_hook::error::none)
            break;
    }

    return distance(begin, curr);
}

} // namespace stomptalk
