#include "stomptalk/parser.hpp"
#include <cstring>
#include <cassert>
#include <algorithm>

namespace stomptalk {

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
            hook.set(stomptalk_error_inval_reqline);
            return curr;
        }

        sbuf_.reset();
        hval_.reset();
        hook.reset();
        // передаем позицию в буфере
        hook.on_frame(curr - 1);

        // сохраняем стек
        sbuf_.push(ch);
        // инкрементируем хэш
        hval_.push(ch);

        // переходим к разбору метода
        state_ = &parser::method_state;

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

        if (ch_isupper(ch))
        {
            if (!sbuf_.push(ch))
            {
                hook.set(stomptalk_error_too_big);
                return curr;
            }
            
            hval_.push(ch);
        }
        else
        {
            if (ch == '\n')
            {
                // определяем метод
                // вызываем каллбек
                hook.on_method(hval_.pop(), sbuf_.pop());

                // переходим к поиску конца метода
                state_ = &parser::hdrline_done;

                return (curr < end) ?
                    hdrline_done(hook, curr, end) : curr;
            }
            else if (ch == '\r')
            {
                // определяем метод
                // вызываем каллбек
                hook.on_method(hval_.pop(), sbuf_.pop());

                // переходим к поиску конца метода
                state_ = &parser::hdrline_almost_done;

                return (curr < end) ?
                    hdrline_almost_done(hook, curr, end) : curr;
            }
            else
            {
                hook.set(stomptalk_error_inval_method);
                return curr;
            }
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

parser::pointer parser::hdrline_hdr_key(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    do
    {
        auto ch = *curr++;

        if (ch == ':')
        {
            // выполняем каллбек на хидер
            hook.on_hdr_key(hval_.pop(), sbuf_.pop());

            state_ = &parser::hdrline_val;

            return (curr < end) ?
                hdrline_val(hook, curr, end) : curr;
        }
        else
        {
            if (ch_isprint_nospace(ch))
            {
                if (!sbuf_.push(ch))
                {
                    hook.set(stomptalk_error_too_big);
                    return curr;
                }

                hval_.push(ch);
            }
            else
            {
                if (ch == '\n')
                {
                    sbuf_.pop();
                    hval_.reset();

                    state_ = &parser::hdrline_done;

                    return (curr < end) ?
                        hdrline_done(hook, curr, end) : curr;
                }
                else if (ch == '\r')
                {
                    sbuf_.pop();
                    hval_.reset();

                    state_ = &parser::hdrline_almost_done;

                    return (curr < end) ?
                        hdrline_almost_done(hook, curr, end) : curr;
                }
                else
                {
                    hook.set(stomptalk_error_inval_frame);
                    return curr;
                }
            }
        }

    } while (curr < end);

    return curr;
}

static inline bool ch_isprint(char ch) noexcept
{
    return (ch >= 32) && (ch <= 126);
}

parser::pointer parser::hdrline_val(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    do {
        auto ch = *curr++;

        if (ch_isprint(ch))
        {
            if (!sbuf_.push(ch))
            {
                hook.set(stomptalk_error_too_big);
                return curr;
            }
        }
        else
        {
            if (ch == '\r')
            {
                // сохраняем параметры стека
                hook.on_hdr_val(sbuf_.pop());

                // переходим к поиску конца метода
                state_ = &parser::hdrline_almost_done;

                return (curr < end) ?
                    hdrline_almost_done(hook, curr, end) : curr;
            }
            else if (ch == '\n')
            {
                // сохраняем параметры стека
                hook.on_hdr_val(sbuf_.pop());

                // переходим к поиску конца метода
                state_ = &parser::hdrline_done;

                return (curr < end) ?
                    hdrline_done(hook, curr, end) : curr;
            }
            else
            {
                hook.set(stomptalk_error_inval_frame);
                return curr;
            }
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
        state_ = &parser::almost_done;

        return (curr < end) ?
            almost_done(hook, curr, end) : curr;
    }
    else if (ch == '\n')
    {
        // переходим к поиску конца метода
        state_ = &parser::done;

        return (curr < end) ?
            done(hook, curr, end) : curr;
    }

    // иначе это следующий хидер
    if (!ch_isprint_nospace(ch))
    {
        hook.set(stomptalk_error_inval_reqline);
        return curr;
    }

    if (!sbuf_.push(ch))
    {
        hook.set(stomptalk_error_too_big);
        return curr;
    }

    hval_.push(ch);

    state_ = &parser::hdrline_hdr_key;

    return (curr < end) ?
        hdrline_hdr_key(hook, curr, end) : curr;

//    return curr;
}

parser::pointer parser::hdrline_almost_done(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    if (*curr++ != '\n')
    {
        hook.set(stomptalk_error_inval_reqline);
        return curr;
    }

    // переходим к поиску конца метода
    state_ = &parser::hdrline_done;

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
        state_ = &parser::start_state;

        // закончили
        hook.on_frame_end(curr);

        // сдвигаем курсор
        ++curr;
    }
    else
    {
        if (hook.content_left() > 0)
        {
            // выбираем как будем читать боди
            state_ = &parser::body_read;

            if (curr < end)
                return body_read(hook, curr, end);
        }
        else
        {
            // выбираем как будем читать боди
            state_ = &parser::body_read_no_length;

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
        hook.set(stomptalk_error_inval_reqline);
        return curr;
    }

    // переходим к поиску конца метода
    state_ = &parser::done;

    return (curr < end) ?
        done(hook, curr, end) : curr;
}

parser::pointer parser::body_read(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    auto to_read = static_cast<std::size_t>(std::distance(curr, end));
    auto content_length = hook.content_left();

    to_read = static_cast<std::size_t>(
        (std::min)(static_cast<std::uint64_t>(to_read), content_length));

    if (to_read > 0)
    {
        content_length -= to_read;
        hook.set(content_length);

        hook.on_body(curr, to_read);
    }

    curr += to_read;

    if (content_length == 0)
    {
        state_ = &parser::frame_end;

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
            state_ = &parser::frame_end;
            // вернемся назад чтобы обработать каллбек
            --curr;
            break;
        }
    } while (curr < end);

    // считаем количество данных боди
    auto to_read = static_cast<std::size_t>(std::distance(beg, curr));

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

    state_ = &parser::start_state;

    if (*curr++ != '\0')
        hook.set(stomptalk_error_inval_frame);

    // закончили
    hook.on_frame_end(curr - 1);

    return curr;
}

std::size_t parser::run(parser_hook& hook,
    const char *begin, std::size_t len) noexcept
{
    hook.set(stomptalk_error_none);

    const char* curr = begin;
    const char* end = begin + len;

    while ((curr < end) && hook.ok())
        curr = (this->*state_)(hook, curr, end);

    return static_cast<std::size_t>(std::distance(begin, curr));
}

} // namespace stomptalk
