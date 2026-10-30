#pragma once

// Определения parser, подключаются из parser.hpp.

#include <cstring>
#include <algorithm>
#include <cstdint>
// Блочный сканер включается флагами сборки: -mavx2 (или -march) даёт AVX2, в x86-64 всегда есть SSE2.
#if defined(__GNUC__) && defined(__AVX2__)
#include <immintrin.h>
#define STOMPTALK_SCAN_BLOCK 32
#elif defined(__GNUC__) && defined(__SSE2__)
#include <emmintrin.h>
#define STOMPTALK_SCAN_BLOCK 16
#endif

namespace stomptalk {

namespace detail {

// Какие байты не требуют решений: элемент из таких байт можно отдать прямо из входного буфера.
struct char_table
{
    bool plain[256];
};

// У ключа и значения один набор: всё, кроме разделителей строки и экранирования.
constexpr char_table make_header_table() noexcept
{
    char_table t{};
    for (int ch = 0; ch < 256; ++ch)
        t.plain[ch] = (ch != '\r') && (ch != '\n') && (ch != ':') && (ch != '\\');
    return t;
}

constexpr char_table make_method_table() noexcept
{
    char_table t{};
    for (int ch = 'A'; ch <= 'Z'; ++ch)
        t.plain[ch] = true;
    return t;
}

static constexpr char_table header_chars = make_header_table();
static constexpr char_table method_chars = make_method_table();

// Первый байт, требующий решения, или end.
inline const char* scan_header(const char* curr, const char* end) noexcept
{
    const auto& t = header_chars.plain;
    while ((curr < end) && t[static_cast<unsigned char>(*curr)])
        ++curr;
    return curr;
}

// Конец метода, первый байт не из A-Z. Методы короче блока, поэтому длина метода
// не становится условным переходом.
inline const char* scan_method(const char* curr, const char* end) noexcept
{
#if defined(STOMPTALK_SCAN_BLOCK)
    if (end - curr >= 16)
    {
        const auto block = _mm_loadu_si128(reinterpret_cast<const __m128i*>(curr));
        // сдвиг ставит A-Z в самый верх знакового диапазона
        const auto shifted = _mm_add_epi8(block, _mm_set1_epi8(127 - 'Z'));
        const int upper = _mm_movemask_epi8(_mm_cmpgt_epi8(shifted, _mm_set1_epi8(127 - 26)));
        if (upper != 0xffff)
            return curr + __builtin_ctz(~static_cast<unsigned>(upper));
    }
#endif
    while ((curr < end) && method_chars.plain[static_cast<unsigned char>(*curr)])
        ++curr;
    return curr;
}

// Выдаёт разделители строк заголовков по порядку. Блок загружается один раз
// и обслуживает все токены в нём, поэтому на токен нет своего цикла и перехода.
// Пока хватает данных на блок, работает AVX2 или SSE2, остаток просматривается по таблице.
class header_scanner
{
    const char* block_;
    const char* end_;
    const char* base_{};
    std::uint64_t mask_{};

#if defined(STOMPTALK_SCAN_BLOCK)
    static constexpr int block_size = STOMPTALK_SCAN_BLOCK;

#if defined(__AVX2__)
    static std::uint64_t block_mask(const char* at) noexcept
    {
        const auto block = _mm256_loadu_si256(reinterpret_cast<const __m256i*>(at));
        const auto hits = _mm256_or_si256(
            _mm256_or_si256(_mm256_cmpeq_epi8(block, _mm256_set1_epi8('\n')),
                _mm256_cmpeq_epi8(block, _mm256_set1_epi8('\r'))),
            _mm256_or_si256(_mm256_cmpeq_epi8(block, _mm256_set1_epi8(':')),
                _mm256_cmpeq_epi8(block, _mm256_set1_epi8('\\'))));
        return static_cast<std::uint32_t>(_mm256_movemask_epi8(hits));
    }
#else
    static std::uint64_t block_mask(const char* at) noexcept
    {
        const auto block = _mm_loadu_si128(reinterpret_cast<const __m128i*>(at));
        const auto hits = _mm_or_si128(
            _mm_or_si128(_mm_cmpeq_epi8(block, _mm_set1_epi8('\n')),
                _mm_cmpeq_epi8(block, _mm_set1_epi8('\r'))),
            _mm_or_si128(_mm_cmpeq_epi8(block, _mm_set1_epi8(':')),
                _mm_cmpeq_epi8(block, _mm_set1_epi8('\\'))));
        return static_cast<std::uint32_t>(_mm_movemask_epi8(hits));
    }
#endif

    void refill() noexcept
    {
        base_ = block_;
        int bits = 0;
        for (; (bits < 64) && (end_ - block_ >= block_size); bits += block_size, block_ += block_size)
            mask_ |= block_mask(block_) << bits;
    }
#endif

public:
    header_scanner(const char* curr, const char* end) noexcept
        : block_{curr}, end_{end}
    {   }

    const char* next() noexcept
    {
#if defined(STOMPTALK_SCAN_BLOCK)
        while (!mask_ && (end_ - block_ >= block_size))
            refill();
        if (mask_)
        {
            const auto at = base_ + __builtin_ctzll(mask_);
            mask_ &= mask_ - 1;
            return at;
        }
#endif
        const auto at = scan_header(block_, end_);
        block_ = (at < end_) ? at + 1 : end_;
        return at;
    }
};

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
    curr = detail::scan_method(curr, end);

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
    // Блок заголовков целиком: ключ и значение каждой строки разбираются здесь,
    // без переходов между состояниями. Всё необычное уходит в побайтный разбор.
    detail::header_scanner scanner(curr, end);
    for (;;)
    {
        auto beg = curr;
        curr = scanner.next();

        auto len = static_cast<std::size_t>(curr - beg);
        if ((curr >= end) || (*curr != ':') || (len > STOMPTALK_PARSER_STACK_SIZE))
        {
            // ключ разорван, с escape или ошибочный: дальше побайтно
            return tailcall(hook, &parser::hdrline_hdr_key_bytes, beg, end);
        }

        hook.on_hdr_key(beg, len);
        ++curr;
        if ((curr >= end) || !hook.ok())
        {
            state_ = &parser::hdrline_val;
            return curr;
        }

        beg = curr;
        curr = scanner.next();

        len = static_cast<std::size_t>(curr - beg);
        if ((curr >= end) || (len > STOMPTALK_PARSER_STACK_SIZE) ||
            ((*curr != '\n') && (*curr != '\r')))
        {
            // значение разорвано, с escape или ошибочное: дальше побайтно
            return tailcall(hook, &parser::hdrline_val_bytes, beg, end);
        }

        hook.on_hdr_val(beg, len);
        if (*curr == '\r')
            return tailcall(hook, &parser::hdrline_almost_done, curr + 1, end);

        ++curr;
        // конец блока, пустой ключ, конец куска или ошибка каллбека решает hdrline_done
        if ((curr >= end) || !hook.ok() || (*curr == '\n') || (*curr == '\r') || (*curr == ':'))
            return tailcall(hook, &parser::hdrline_done, curr, end);
    }
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
                if (!push(hook, ch)) {
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
    curr = detail::scan_header(curr, end);

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

        if (ch == '\r') {
            hook.on_hdr_val(sbuf_.pop());
            escape_ = false;
            return tailcall(hook, &parser::hdrline_almost_done, curr, end);
        }

        if (ch == '\n') {
            hook.on_hdr_val(sbuf_.pop());
            escape_ = false;
            return tailcall(hook, &parser::hdrline_done, curr, end);
        }

        if (!raw_headers_) {
            if (ch == '\\') {
                escape_ = true;
                continue;
            }
            // двоеточие в значении должно быть экранировано
            if (ch == ':') {
                hook.set(stomptalk_error_inval_frame);
                return curr;
            }
        }

        if (!sbuf_.push(static_cast<char>(ch))) {
            hook.set(stomptalk_error_too_big);
            return curr;
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
    if (ch == ':')
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
    if (hook.has_content_length())
    {
        return (hook.content_left() > 0) ?
            tailcall(hook, &parser::body_read, curr, end) :
            tailcall(hook, &parser::frame_end, curr, end);
    }

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
