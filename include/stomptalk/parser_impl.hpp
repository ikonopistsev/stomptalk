#pragma once

// Определения parser, подключаются из parser.hpp.

#include <cstring>
#include <algorithm>

namespace stomptalk {

namespace detail {

// Какие байты не требуют решений: элемент из таких байт можно отдать прямо из входного буфера.
struct char_table
{
    bool plain[256];
};

constexpr char_table make_key_table() noexcept
{
    char_table t{};
    for (int ch = 33; ch <= 126; ++ch)
        t.plain[ch] = (ch != ':') && (ch != '\\');
    return t;
}

constexpr char_table make_value_table() noexcept
{
    char_table t{};
    for (int ch = 32; ch <= 126; ++ch)
        t.plain[ch] = (ch != '\\');
    return t;
}

constexpr char_table make_method_table() noexcept
{
    char_table t{};
    for (int ch = 'A'; ch <= 'Z'; ++ch)
        t.plain[ch] = true;
    return t;
}

static constexpr char_table key_chars = make_key_table();
static constexpr char_table value_chars = make_value_table();
static constexpr char_table method_chars = make_method_table();

} // namespace detail

template<class H>
typename parser<H>::pointer parser<H>::start_state(hook_type& hook,
    pointer curr, pointer end) noexcept
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
        hook.reset();
        escape_ = false;
        raw_headers_ = false;
        // передаем позицию в буфере
        hook.on_frame(curr - 1);

        // метод целиком разберет method_state, начиная с этого байта
        return tailcall(hook, &parser::method_state, curr - 1, end);
    } while (curr < end);

    return curr;
}

template<class H>
typename parser<H>::pointer parser<H>::method_state(hook_type& hook,
    pointer curr, pointer end) noexcept
{
    auto beg = curr;
    while ((curr < end) && detail::method_chars.plain[static_cast<unsigned char>(*curr)])
        ++curr;

    auto len = static_cast<std::size_t>(curr - beg);
    if ((curr < end) && (len <= STOMPTALK_PARSER_STACK_SIZE))
    {
        if (*curr == '\n')
        {
            method_done(hook, beg, len);
            return tailcall(hook, &parser::hdrline_done, curr + 1, end);
        }
        if (*curr == '\r')
        {
            method_done(hook, beg, len);
            return tailcall(hook, &parser::hdrline_almost_done, curr + 1, end);
        }
    }

    // метод не весь в буфере: дальше побайтно
    return tailcall(hook, &parser::method_state_bytes, beg, end);
}

template<class H>
typename parser<H>::pointer parser<H>::method_state_bytes(hook_type& hook,
    pointer curr, pointer end) noexcept
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
            if ((ch != '\n') && (ch != '\r'))
            {
                hook.set(stomptalk_error_inval_method);
                return curr;
            }

            // определяем метод
            // вызываем каллбек
            auto kept = sbuf_.pop();
            method_done(hook, kept.first, kept.second);

            // переходим к поиску конца метода
            return tailcall(hook, (ch == '\n') ? 
                &parser::hdrline_done : &parser::hdrline_almost_done, curr, end);
        }

    } while (curr < end);

    return curr;
}

template<class H>
typename parser<H>::pointer parser<H>::hdrline_hdr_key(hook_type& hook,
    pointer curr, pointer end) noexcept
{
    auto beg = curr;
    while ((curr < end) && detail::key_chars.plain[static_cast<unsigned char>(*curr)])
        ++curr;

    auto len = static_cast<std::size_t>(curr - beg);
    if ((curr < end) && (*curr == ':') && (len <= STOMPTALK_PARSER_STACK_SIZE))
    {
        hook.on_hdr_key(beg, len);
        return tailcall(hook, &parser::hdrline_val, curr + 1, end);
    }

    // ключ разорван, с escape или ошибочный: дальше побайтно
    return tailcall(hook, &parser::hdrline_hdr_key_bytes, beg, end);
}

template<class H>
typename parser<H>::pointer parser<H>::hdrline_hdr_key_bytes(hook_type& hook,
    pointer curr, pointer end) noexcept
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
            // записали раскодированный символ в ключ
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
                if (raw_headers_) 
                {
                    if (!push(hook, ch)) { 
                        return curr; 
                    }
                    continue;
                }
                escape_ = true;
                continue; // ждём следующий байт (сам бэкслеш не пишем)

            case ':':
                // конец ключа → в значение
                hook.on_hdr_key(sbuf_.pop());
                escape_ = false;  // на всякий случай
                return tailcall(hook, &parser::hdrline_val, curr, end);

            case '\n':
            case '\r':
                // пустую строку разбирает hdrline_done, здесь ключ без двоеточия
                hook.set(stomptalk_error_inval_frame);
                return curr;

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

template<class H>
typename parser<H>::pointer parser<H>::hdrline_val(hook_type& hook,
    pointer curr, pointer end) noexcept
{
    auto beg = curr;
    while ((curr < end) && detail::value_chars.plain[static_cast<unsigned char>(*curr)])
        ++curr;

    auto len = static_cast<std::size_t>(curr - beg);
    if ((curr < end) && (len <= STOMPTALK_PARSER_STACK_SIZE))
    {
        if (*curr == '\n')
        {
            hook.on_hdr_val(beg, len);
            return tailcall(hook, &parser::hdrline_done, curr + 1, end);
        }
        if (*curr == '\r')
        {
            hook.on_hdr_val(beg, len);
            return tailcall(hook, &parser::hdrline_almost_done, curr + 1, end);
        }
    }

    // значение разорвано, с escape или ошибочное: дальше побайтно
    return tailcall(hook, &parser::hdrline_val_bytes, beg, end);
}

template<class H>
typename parser<H>::pointer parser<H>::hdrline_val_bytes(hook_type& hook,
    pointer curr, pointer end) noexcept
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
            if ((ch == '\\') && !raw_headers_) {
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

template<class H>
typename parser<H>::pointer parser<H>::hdrline_done(hook_type& hook,
    pointer curr, pointer end) noexcept
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

    // иначе это следующий хидер, имя не может быть пустым
    if (!ch_isprint_nospace(ch) || (ch == ':'))
    {
        hook.set(stomptalk_error_inval_reqline);
        return curr;
    }

    // ключ целиком разберет hdrline_hdr_key, начиная с этого байта
    return tailcall(hook, &parser::hdrline_hdr_key, curr - 1, end);
}

template<class H>
typename parser<H>::pointer parser<H>::hdrline_almost_done(hook_type& hook,
    pointer curr, pointer end) noexcept
{
    if (*curr++ != '\n')
    {
        hook.set(stomptalk_error_inval_reqline);
        return curr;
    }

    // переходим к поиску конца метода
    return tailcall(hook, &parser::hdrline_done, curr, end);
}

template<class H>
typename parser<H>::pointer parser<H>::done(hook_type& hook,
    pointer curr, pointer end) noexcept
{
    // при заданной длине боди может начинаться с нуля
    if (hook.content_left() > 0)
        return tailcall(hook, &parser::body_read, curr, end);

    if (*curr == '\0') 
    {
        hook.on_frame_end(curr);
        return tailcall(hook, &parser::start_state, ++curr, end);
    }

    return tailcall(hook, &parser::body_read_no_length, curr, end);
}


template<class H>
typename parser<H>::pointer parser<H>::almost_done(hook_type& hook,
    pointer curr, pointer end) noexcept
{
    if (*curr++ != '\n')
    {
        hook.set(stomptalk_error_inval_reqline);
        return curr;
    }

    // переходим к поиску конца метода
    return tailcall(hook, &parser::done, curr, end);
}

template<class H>
typename parser<H>::pointer parser<H>::body_read(hook_type& hook,
    pointer curr, pointer end) noexcept
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

template<class H>
typename parser<H>::pointer parser<H>::body_read_no_length(hook_type& hook,
    pointer curr, pointer end) noexcept
{
    auto beg = curr;
    auto avail = static_cast<std::size_t>(end - curr);
    auto nul = static_cast<pointer>(
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

template<class H>
typename parser<H>::pointer parser<H>::frame_end(hook_type& hook,
    pointer curr, pointer) noexcept
{

    state_ = &parser::start_state;

    if (*curr++ != '\0')
    {
        hook.set(stomptalk_error_inval_frame);
        return curr;
    }

    // закончили
    hook.on_frame_end(curr - 1);

    return curr;
}

template<class H>
std::size_t parser<H>::run(hook_type& hook,
    const char *begin, std::size_t len) noexcept
{
    // ошибка не должна теряться между кусками
    if (!hook.ok())
        return 0;

    const char* curr = begin;
    const char* end = begin + len;

    while ((curr < end) && hook.ok())
        curr = (this->*state_)(hook, curr, end);

    // байт с ошибкой не считаем разобранным: иначе ошибка на последнем
    // байте куска дала бы rc == len
    if (!hook.ok() && (curr > begin))
        --curr;

    return static_cast<std::size_t>(curr - begin);
}

} // namespace stomptalk
