#include "stomptalk/parser.hpp"
#include <cstring>
#include <cassert>
#include <algorithm>

namespace stomptalk {

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
        escape_ = false;
        // передаем позицию в буфере
        hook.on_frame(curr - 1);

        // сохраняем стек
        sbuf_.push(ch);
        // инкрементируем хэш
        hval_.push(ch);

        // переходим к разбору метода
        return tailcall(hook, &parser::method_state, curr, end);
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
            if (!push(hook, ch)) { 
                return curr; 
            }
        }
        else
        {
            if (ch == '\n')
            {
                // определяем метод
                // вызываем каллбек
                hook.on_method(hval_.pop(), sbuf_.pop());

                // переходим к поиску конца метода
                return tailcall(hook, &parser::hdrline_done, curr, end);
            }
            else if (ch == '\r')
            {
                // определяем метод
                // вызываем каллбек
                hook.on_method(hval_.pop(), sbuf_.pop());

                // переходим к поиску конца метода
                return tailcall(hook, &parser::hdrline_almost_done, curr, end);
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

parser::pointer parser::hdrline_hdr_key(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    do {
        unsigned char ch = static_cast<unsigned char>(*curr++);

        // 1) Продолжение escape-последовательности?
        if (escape_) 
        {
            switch (ch) {
                case 'n': ch = '\n'; break;
                case 'r': ch = '\r'; break;
                case 'c': ch = ':';  break;
                case '\\': ch = '\\'; break;
                default:
                    hook.set(stomptalk_error_inval_frame);
                    return curr;
            }
            // записали раскодированный символ в ключ + хэш
            if (!push(hook, ch)) { 
                return curr; 
            }

            escape_ = false;
            continue; // берём следующий байт
        }

        // 2) Не в escape-режиме: специальные символы
        switch (ch) 
        {
            case '\\':
                escape_ = true;
                continue; // ждём следующий байт (сам бэкслеш не пишем)

            case ':':
                // конец ключа → в значение
                hook.on_hdr_key(hval_.pop(), sbuf_.pop());
                escape_ = false;  // на всякий случай
                return tailcall(hook, &parser::hdrline_val, curr, end);

            case '\n':
                // пустая строка → конец заголовков
                sbuf_.reset();
                hval_.reset();
                escape_ = false;
                return tailcall(hook, &parser::hdrline_done, curr, end);
            case '\r':
                sbuf_.reset();
                hval_.reset();
                escape_ = false;
                return tailcall(hook, &parser::hdrline_almost_done, curr, end);

            default:
                // 3) Обычный символ ключа
                if (ch_isprint_nospace(ch)) 
                {
                    if (!push(hook, ch)) { 
                        return curr; 
                    }
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

parser::pointer parser::hdrline_val(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    do {
        unsigned char ch = static_cast<unsigned char>(*curr++);

        if (escape_) 
        {
            switch (ch) 
            {
                case 'n': ch = '\n'; break;
                case 'r': ch = '\r'; break;
                case 'c': ch = ':';  break;
                case '\\': ch = '\\'; break;
                default:
                    hook.set(stomptalk_error_inval_frame);
                    return curr;
            }
            if (!sbuf_.push(static_cast<char>(ch))) {
                hook.set(stomptalk_error_too_big);
                return curr;
            }
            escape_ = false;
            continue;
        }

        if (ch_isprint(ch)) 
        {
            if (ch == '\\') {
                escape_ = true;
                continue;
            }
            if (!sbuf_.push(static_cast<char>(ch))) {
                hook.set(stomptalk_error_too_big);
                return curr;
            }
        } else {
            if (ch == '\r') {
                hook.on_hdr_val(sbuf_.pop());
                escape_ = false;
                return tailcall(hook, &parser::hdrline_almost_done, curr, end);
            } else if (ch == '\n') {
                hook.on_hdr_val(sbuf_.pop());
                escape_ = false;
                return tailcall(hook, &parser::hdrline_done, curr, end);
            } else {
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
        return tailcall(hook, &parser::almost_done, curr, end);
    }
    else if (ch == '\n')
    {
        // переходим к поиску конца метода
        return tailcall(hook, &parser::done, curr, end);
    }

    // иначе это следующий хидер
    if (!ch_isprint_nospace(ch))
    {
        hook.set(stomptalk_error_inval_reqline);
        return curr;
    }

    if (!push(hook, ch))
        return curr;

    escape_ = false;  
    return tailcall(hook, &parser::hdrline_hdr_key, curr, end);
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
    return tailcall(hook, &parser::hdrline_done, curr, end);
}

parser::pointer parser::done(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    if (*curr == '\0') 
    {
        hook.on_frame_end(curr);
        return tailcall(hook, &parser::start_state, ++curr, end);
    }
    // выбираем как будем читать боди
    return tailcall(hook, 
        (hook.content_left() > 0) ? &parser::body_read : 
            &parser::body_read_no_length, curr, end);
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
    return tailcall(hook, &parser::done, curr, end);
}

parser::pointer parser::body_read(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    auto avail = static_cast<std::size_t>(end - curr);
    auto left = hook.content_left();
    auto to_read = static_cast<std::size_t>(
        (std::min)(static_cast<std::uint64_t>(avail), left)
    );

    if (to_read > 0)
    {
        left -= to_read;
        hook.set(left);
        hook.on_body(curr, to_read);
    }

    curr += to_read;

    if (left == 0)
        return tailcall(hook, &parser::frame_end, curr, end);

    // данных больше нет
    return curr;
}

parser::pointer parser::body_read_no_length(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    auto beg = curr;
    auto avail = static_cast<std::size_t>(end - curr);
    auto nul = static_cast<parser::pointer>(
        std::memchr(curr, '\0', avail)
    );

    if (nul) {
        auto to_read = static_cast<std::size_t>(nul - beg);
        if (to_read > 0) {
            hook.on_body(beg, to_read);
        }
        return tailcall(hook, &parser::frame_end, nul, end);
    }

    if (avail > 0) {
        hook.on_body(beg, avail);
    }

    return end;
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

    return static_cast<std::size_t>(curr - begin);
}

} // namespace stomptalk
