#include "stomptalk/parser.hpp"
#include "stomptalk/header.hpp"
#include "stomptalk/parser_hook.hpp"
#include "stomptalk/antoull.hpp"
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

static inline bool ch_isupper(char ch) noexcept
{
    return ('A' <= ch) && (ch <= 'Z');
    //return 0 == std::isupper(ch);
}

parser::pointer parser::start_state(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
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
        hook.set(parser_hook::content_type_id::none);

        // вызываем каллбек
        hook.on_frame();

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

parser::pointer parser::method_state(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    do {
        auto ch = *curr++;

        if (ch == '\r')
        {
            // определяем метод
            // вызываем каллбек
            hook.on_method(sbuf_.pop());

            // переходим к поиску конца метода
            state_fn_ = &parser::hdrline_almost_done;

            return (curr < end) ?
                hdrline_almost_done(hook, curr, end) : curr;
        }
        else if (ch == '\n')
        {
            // определяем метод
            // вызываем каллбек
            hook.on_method(sbuf_.pop());

            // переходим к поиску конца метода
            state_fn_ = &parser::hdrline_done;

            return (curr < end) ?
                hdrline_done(hook, curr, end) : curr;
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

//static inline bool ch_isprint(char ch) noexcept
//{
//    return (ch >= 32) && (ch <= 126);
//}

static inline bool ch_isprint_nospace(char ch) noexcept
{
    return (ch > 32) && (ch <= 126);
}

void parser::eval_header(parser_hook&, std::string_view val) noexcept
{
    using header::size_of;
    using namespace header::tag;

    header::mask_id::type rc;
    switch (val.size())
    {
        case (size_of(content_length())):
            if (detect(rc, val, content_length()))
            {
                if (rc == header::mask_id::content_length)
                    heval_ = heval::content_length;
            }
        break;
        case (size_of(content_type())):
            if (detect(rc, val, content_type()))
            {
                if (rc == header::mask_id::content_type)
                    heval_ = heval::content_type;
            }
        break;
        default:
            heval_ = heval::none;
    }
}

void parser::eval_value(parser_hook& hook, std::string_view val) noexcept
{
    if (heval_ == heval::content_length)
    {
        auto content_len = antoull(val);
        if (content_len > 0ll)
        {
            auto value = static_cast<std::uint64_t>(content_len);
            content_len_ = value;
            hook.set_content_length(value);
        }
    }
    else if (heval_ == heval::content_type)
    {
        hook.eval_content_type(val);
    }
}

parser::pointer parser::hdrline_hdr_key(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    do
    {
        auto ch = *curr++;

        if (ch == ':')
        {
            // сохраняем параметры стека
            auto text = sbuf_.pop();

            // определяем значимый ли хидер
            eval_header(hook, text);

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

parser::pointer parser::hdrline_val(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    do {
        auto ch = *curr++;

        if (ch == '\r')
        {
            // сохраняем параметры стека
            auto text = sbuf_.pop();

            eval_value(hook, text);

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

            eval_value(hook, text);

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

parser::pointer parser::hdrline_done(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
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

    return (curr < end) ?
        hdrline_hdr_key(hook, curr, end) : curr;

//    return curr;
}

parser::pointer parser::hdrline_almost_done(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
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

parser::pointer parser::done(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    auto ch = *curr;

    // конец фрейма
    if (ch == '\0')
    {
        state_fn_ = &parser::start_state;

        // сдвигаем курсор
        ++curr;

        // закончили
        hook.on_frame_end();
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


parser::pointer parser::almost_done(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
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

parser::pointer parser::body_read(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    auto to_read = std::distance(curr, end);

    to_read = static_cast<std::size_t>(
        (std::min)(static_cast<std::uint64_t>(to_read), content_len_));

    if (to_read > 0)
    {
        content_len_ -= to_read;

        hook.on_body(curr, to_read);
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

parser::pointer parser::body_read_no_length(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
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
    auto to_read = std::distance(beg, curr);

    if (to_read > 0)
    {
        // сообщаем о боди
        hook.on_body(beg, to_read);
    }

    return curr;
}

parser::pointer parser::frame_end(parser_hook& hook,
    parser::pointer curr, parser::pointer) noexcept
{
    // закончили
    hook.on_frame_end();

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

    return static_cast<std::size_t>(std::distance(begin, curr));
}

} // namespace stomptalk
