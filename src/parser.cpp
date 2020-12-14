#include "stomptalk/parser.hpp"
#include "stomptalk/header.hpp"
#include "stomptalk/parser_hook.hpp"
#include "stomptalk/parser.h"
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
            hook.inval_reqline();
            return curr;
        }

        sbuf_.reset();
        hook.reset();
        // передаем позицию в буфере
        hook.on_frame(curr - 1);

        // сохраняем стек
        sbuf_.push(ch);

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

        if (ch_isupper(ch))
        {
            if (!sbuf_.push(ch))
            {
                hook.too_big();
                return curr;
            }
        }
        else
        {
            if (ch == '\n')
            {
                // определяем метод
                // вызываем каллбек
                hook.on_method(sbuf_.pop());

                // переходим к поиску конца метода
                state_fn_ = &parser::hdrline_done;

                return (curr < end) ?
                    hdrline_done(hook, curr, end) : curr;
            }
            else if (ch == '\r')
            {
                // определяем метод
                // вызываем каллбек
                hook.on_method(sbuf_.pop());

                // переходим к поиску конца метода
                state_fn_ = &parser::hdrline_almost_done;

                return (curr < end) ?
                    hdrline_almost_done(hook, curr, end) : curr;
            }
            else
            {
                hook.inval_method();
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
            // сохраняем параметры стека
            auto text = sbuf_.pop();

            // выполняем каллбек на хидер
            hook.on_hdr_key(text);

            state_fn_ = &parser::hdrline_val;

            return (curr < end) ?
                hdrline_val(hook, curr, end) : curr;
        }
        else
        {
            if (ch_isprint_nospace(ch))
            {
                if (!sbuf_.push(ch))
                {
                    hook.too_big();
                    return curr;
                }
            }
            else
            {
                if (ch == '\n')
                {
                    sbuf_.pop();

                    state_fn_ = &parser::hdrline_done;

                    return (curr < end) ?
                        hdrline_done(hook, curr, end) : curr;
                }
                else if (ch == '\r')
                {
                    sbuf_.pop();

                    state_fn_ = &parser::hdrline_almost_done;

                    return (curr < end) ?
                        hdrline_almost_done(hook, curr, end) : curr;
                }
                else
                {
                    hook.inval_frame();
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
                hook.too_big();
                return curr;
            }
        }
        else
        {
            if (ch == '\r')
            {
                // сохраняем параметры стека
                auto text = sbuf_.pop();

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

                hook.on_hdr_val(text);

                // переходим к поиску конца метода
                state_fn_ = &parser::hdrline_done;

                return (curr < end) ?
                    hdrline_done(hook, curr, end) : curr;
            }
            else
            {
                hook.inval_frame();
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
        hook.inval_reqline();
        return curr;
    }

    if (!sbuf_.push(ch))
    {
        hook.too_big();
        return curr;
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
        hook.inval_reqline();
        return curr;
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

        // закончили
        hook.on_frame_end(curr);

        // сдвигаем курсор
        ++curr;
    }
    else
    {
        if (hook.content_length() > 0)
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
        hook.inval_reqline();
        return curr;
    }

    // переходим к поиску конца метода
    state_fn_ = &parser::done;

    return (curr < end) ?
        done(hook, curr, end) : curr;
}

parser::pointer parser::body_read(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    auto to_read = static_cast<std::size_t>(std::distance(curr, end));
    auto content_length = hook.content_length();

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

    state_fn_ = &parser::start_state;

    if (*curr++ != '\0')
        hook.inval_frame();

    // закончили
    hook.on_frame_end(curr - 1);

    return curr;
}

std::size_t parser::run(parser_hook& hook,
    const char *begin, std::size_t len) noexcept
{
    hook.no_error();

    const char* curr = begin;
    const char* end = begin + len;

    while ((curr < end) && hook.ok())
        curr = (this->*state_fn_)(hook, curr, end);

    return static_cast<std::size_t>(std::distance(begin, curr));
}

} // namespace stomptalk

struct stomptalk_parser
    : public stomptalk::hook_base
{
public:
    stomptalk_parser() = default;

    std::size_t run(const stomptalk_parser_hook *hook,
        const char *begin, std::size_t len) noexcept
    {
        user_ = hook;
        return parser_.run(hook_, begin, len);
    }

    std::uint64_t content_length() const noexcept
    {
        return hook_.content_length();
    }

    std::size_t get_error() const noexcept
    {
        return hook_.error();
    }

private:
    stomptalk::parser parser_{};
    stomptalk::parser_hook hook_{*this};
    const stomptalk_parser_hook *user_{};

    virtual void on_frame(stomptalk::parser_hook&, const char* ptr) noexcept
    {
        if (user_ && user_->on_frame)
            user_->on_frame(this, ptr);
    }

    virtual void on_method(stomptalk::parser_hook& hook,
                           std::string_view method) noexcept
    {
        if (user_ && user_->on_method)
        {
            if (user_->on_method(this, method.data(), method.size()))
                hook.generic_error();
        }
    }

    virtual void on_hdr_key(stomptalk::parser_hook& hook,
                            std::string_view key) noexcept
    {
        if (user_ && user_->on_hdr_key)
        {
            if (user_->on_hdr_key(this, key.data(), key.size()))
                hook.generic_error();
        }
    }

    virtual void on_hdr_val(stomptalk::parser_hook& hook,
                            std::string_view val) noexcept
    {
        if (user_ && user_->on_hdr_val)
        {
            if (user_->on_hdr_val(this, val.data(), val.size()))
                 hook.generic_error();
        }
    }

    virtual void on_body(stomptalk::parser_hook& hook,
                         const void* ptr, std::size_t size) noexcept
    {
        if (user_ && user_->on_body)
        {
            if (user_->on_body(this, static_cast<const char*>(ptr), size))
                 hook.generic_error();
        }
    }

    virtual void on_frame_end(stomptalk::parser_hook&, const char* ptr) noexcept
    {
        if (user_ && user_->on_frame_end)
            user_->on_frame_end(this, ptr);
    }
};

struct stomptalk_parser* stomptalk_parser_new()
{
    return new (std::nothrow) stomptalk_parser();
}

void stomptalk_parser_free(struct stomptalk_parser *parser)
{
    delete parser;
}

size_t stomptalk_parser_execute(stomptalk_parser *parser,
    const stomptalk_parser_hook *user, const char *data, size_t len)
{
    assert(data);
    assert(user);
    assert(parser);

    return static_cast<size_t>(parser->run(user, data, len));
}

uint64_t stomptalk_get_content_length(stomptalk_parser *parser)
{
    assert(parser);

    return parser->content_length();
}

size_t stomptalk_get_error(stomptalk_parser *parser)
{
    assert(parser);

    return parser->get_error();
}

const char* stomptalk_get_error_str(size_t error)
{
    return "";
}
