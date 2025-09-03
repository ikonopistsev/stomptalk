#include "stomptalk/parser.hpp"
#include <cstring>
#include <cassert>
#include <algorithm>
#include <emmintrin.h>

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
        //hval_.reset();
        hook.reset();
        escape_ = false;
        // передаем позицию в буфере
        hook.on_frame(curr - 1);

        // сохраняем стек
        sbuf_.push(ch);
        // инкрементируем хэш
        //hval_.push(ch);

        // переходим к разбору метода
        return tailcall(hook, &parser::method_state, curr, end);
    } while (curr < end);

    return curr;
}

// parser::pointer parser::method_state(parser_hook& hook,
//     parser::pointer curr, parser::pointer end) noexcept
// {
//     do {
//         auto ch = *curr++;

//         if (ch_isupper(ch))
//         {
//             if (!push(hook, ch)) { 
//                 return curr; 
//             }
//         }
//         else
//         {
//             if (ch == '\n')
//             {
//                 // определяем метод
//                 // вызываем каллбек
//                 hook.on_method(hval_.pop(), sbuf_.pop());

//                 // переходим к поиску конца метода
//                 return tailcall(hook, &parser::hdrline_done, curr, end);
//             }
//             else if (ch == '\r')
//             {
//                 // определяем метод
//                 // вызываем каллбек
//                 hook.on_method(hval_.pop(), sbuf_.pop());

//                 // переходим к поиску конца метода
//                 return tailcall(hook, &parser::hdrline_almost_done, curr, end);
//             }
//             else
//             {
//                 hook.set(stomptalk_error_inval_method);
//                 return curr;
//             }
//         }

//     } while (curr < end);

//     return curr;
// }

#if defined(__SSE2__)

static inline __m128i eq8(__m128i v, unsigned char k) noexcept {
    return _mm_cmpeq_epi8(v, _mm_set1_epi8((char)k));
}

// маска 0xFF там, где A..Z
static inline __m128i in_range_AZ_mask(__m128i v) noexcept {
    const __m128i bias = _mm_set1_epi8((char)0x80);
    const __m128i sv   = _mm_xor_si128(v, bias);
    const __m128i A    = _mm_set1_epi8((char)('A' ^ 0x80));
    const __m128i Z    = _mm_set1_epi8((char)('Z' ^ 0x80));
    const __m128i ltA  = _mm_cmpgt_epi8(A, sv);   // sv < A
    const __m128i gtZ  = _mm_cmpgt_epi8(sv, Z);   // sv > Z
    return _mm_andnot_si128(_mm_or_si128(ltA, gtZ), _mm_set1_epi8((char)0xFF));
}

// маска 0xFF там, где байт в [33..126] — разрешённый для key (no-space)
static inline __m128i printable_no_space_mask(__m128i v) noexcept {
    const __m128i bias = _mm_set1_epi8((char)0x80);
    const __m128i sv   = _mm_xor_si128(v, bias);
    const __m128i LO   = _mm_set1_epi8((char)(33 ^ 0x80)); // 33
    const __m128i HI   = _mm_set1_epi8((char)(126 ^ 0x80)); // 126
    const __m128i lt   = _mm_cmpgt_epi8(LO, sv);  // sv < 33
    const __m128i gt   = _mm_cmpgt_epi8(sv, HI);  // sv > 126
    return _mm_andnot_si128(_mm_or_si128(lt, gt), _mm_set1_epi8((char)0xFF));
}

// маска 0xFF там, где байт в [32..126] — разрешённый для value
static inline __m128i printable_with_space_mask(__m128i v) noexcept {
    const __m128i bias = _mm_set1_epi8((char)0x80);
    const __m128i sv   = _mm_xor_si128(v, bias);
    const __m128i LO   = _mm_set1_epi8((char)(32 ^ 0x80)); // 32
    const __m128i HI   = _mm_set1_epi8((char)(126 ^ 0x80)); // 126
    const __m128i lt   = _mm_cmpgt_epi8(LO, sv);  // sv < 32
    const __m128i gt   = _mm_cmpgt_epi8(sv, HI);  // sv > 126
    return _mm_andnot_si128(_mm_or_si128(lt, gt), _mm_set1_epi8((char)0xFF));
}

parser::pointer parser::method_state(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    const char* p   = curr;
    const char* s   = curr; // начало метода

    // 1) Сканируем блоками 16, ничего не копируем, пока не найдём событие
    while (p + 16 <= end) {
        const __m128i v    = _mm_loadu_si128((const __m128i*)p);
        const __m128i isLF = eq8(v, '\n');
        const __m128i isCR = eq8(v, '\r');
        const __m128i inAZ = in_range_AZ_mask(v);
        const __m128i bad  = _mm_xor_si128(inAZ, _mm_set1_epi8((char)0xFF));
        const __m128i evt  = _mm_or_si128(_mm_or_si128(isLF, isCR), bad);

        const int mask = _mm_movemask_epi8(evt);
        if (mask == 0) {
            p += 16;           // всё валидно, просто двигаем указатель
            continue;
        }
        // нашли первое событие в блоке
        const int idx = __builtin_ctz(mask);
        p += idx;              // p указывает на байт-событие
        break;
    }

    // 2) Хвост <16 байт: скалярный догон, без копий
    while (p < end) {
        unsigned char ch = (unsigned char)*p;
        if (ch >= 'A' && ch <= 'Z') { ++p; continue; }
        break; // событие
    }

    // здесь [s, p) — валидный префикс метода без событий
    if (p == end) {
        // терминатора не было — просто накопим префикс
        const size_t n = (size_t)(p - s);
        if (n && !push(hook, s, n)) return p;
        return p;
    }

    // событие в *p
    const size_t n = (size_t)(p - s);
    if (n && !push(hook, s, n)) return p;
    const unsigned char ch = (unsigned char)*p++;
    if (ch == '\n' || ch == '\r') {
        // метод завершён
        hook.on_method(/*id*/0, sbuf_.pop()); // если id не нужен — 0; иначе посчитай тут по (ptr,len)
        return (ch == '\n')
            ? tailcall(hook, &parser::hdrline_done, p, end)
            : tailcall(hook, &parser::hdrline_almost_done, p, end);
    }
    // это не A..Z и не EOL — ошибка
    hook.set(stomptalk_error_inval_method);
    return p;
}

#else
// скалярная версия без memchr: один проход до события
parser::pointer parser::method_state(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
    const char* p = curr;
    while (p < end) {
        unsigned char ch = (unsigned char)*p;
        if (ch >= 'A' && ch <= 'Z') { ++p; continue; }

        if (!push(hook, curr, (size_t)(p - curr))) return p;

        ++p;
        if (ch == '\n') {
            hook.on_method(0, sbuf_.pop());
            return tailcall(hook, &parser::hdrline_done, p, end);
        }
        if (ch == '\r') {
            hook.on_method(0, sbuf_.pop());
            return tailcall(hook, &parser::hdrline_almost_done, p, end);
        }
        hook.set(stomptalk_error_inval_method);
        return p;
    }
    if (p != curr) {
        if (!push(hook, curr, (size_t)(p - curr))) return p;
    }
    return p;
}
#endif

// parser::pointer parser::hdrline_hdr_key(parser_hook& hook,
//     parser::pointer curr, parser::pointer end) noexcept
// {
//     do {
//         unsigned char ch = static_cast<unsigned char>(*curr++);

//         // 1) Продолжение escape-последовательности?
//         if (escape_) 
//         {
//             switch (ch) {
//                 case 'n': ch = '\n'; break;
//                 case 'r': ch = '\r'; break;
//                 case 'c': ch = ':';  break;
//                 case '\\': ch = '\\'; break;
//                 default:
//                     hook.set(stomptalk_error_inval_frame);
//                     return curr;
//             }
//             // записали раскодированный символ в ключ + хэш
//             if (!push(hook, ch)) { 
//                 return curr; 
//             }

//             escape_ = false;
//             continue; // берём следующий байт
//         }

//         // 2) Не в escape-режиме: специальные символы
//         switch (ch) 
//         {
//             case '\\':
//                 escape_ = true;
//                 continue; // ждём следующий байт (сам бэкслеш не пишем)

//             case ':':
//                 // конец ключа → в значение
//                 hook.on_hdr_key(hval_.pop(), sbuf_.pop());
//                 escape_ = false;  // на всякий случай
//                 return tailcall(hook, &parser::hdrline_val, curr, end);

//             case '\n':
//                 // пустая строка → конец заголовков
//                 sbuf_.reset();
//                 hval_.reset();
//                 escape_ = false;
//                 return tailcall(hook, &parser::hdrline_done, curr, end);
//             case '\r':
//                 sbuf_.reset();
//                 hval_.reset();
//                 escape_ = false;
//                 return tailcall(hook, &parser::hdrline_almost_done, curr, end);

//             default:
//                 // 3) Обычный символ ключа
//                 if (ch_isprint_nospace(ch)) 
//                 {
//                     if (!push(hook, ch)) { 
//                         return curr; 
//                     }
//                 } 
//                 else 
//                 {
//                     hook.set(stomptalk_error_inval_frame);
//                     return curr;
//                 }
//         }
//     } while (curr < end);

//     return curr;
// }

parser::pointer parser::hdrline_hdr_key(parser_hook& hook,
    parser::pointer curr, parser::pointer end) noexcept
{
#if defined(__SSE2__)
    const char* p = curr;
    const char* s = curr;

    while (p + 16 <= end && !escape_) {
        const __m128i v      = _mm_loadu_si128((const __m128i*)p);
        const __m128i isBS   = eq8(v, '\\');
        const __m128i isCOL  = eq8(v, ':');
        const __m128i isLF   = eq8(v, '\n');
        const __m128i isCR   = eq8(v, '\r');
        const __m128i ok     = printable_no_space_mask(v);
        const __m128i bad    = _mm_xor_si128(ok, _mm_set1_epi8((char)0xFF));

        const __m128i evt    = _mm_or_si128(_mm_or_si128(_mm_or_si128(isBS, isCOL),
                                                         _mm_or_si128(isLF, isCR)),
                                            bad);
        int mask = _mm_movemask_epi8(evt);
        if (mask == 0) { p += 16; continue; }

        int idx = __builtin_ctz(mask);
        // копируем весь «чистый» префикс
        if (s + idx > s) {
            if (!push(hook, s, (size_t)(idx))) return p + idx;
        }
        p += idx;

        // событие в *p
        unsigned char ch = (unsigned char)*p++;

        if (ch == '\\') {
            escape_ = true;
            curr = p; // перейдём в slow-path ниже
            break;
        }
        if (ch == ':') {
            // key ready
            hook.on_hdr_key(/*id*/0, sbuf_.pop());
            return tailcall(hook, &parser::hdrline_val, p, end);
        }
        if (ch == '\n') {
            sbuf_.reset(); escape_ = false;
            return tailcall(hook, &parser::hdrline_done, p, end);
        }
        if (ch == '\r') {
            sbuf_.reset(); escape_ = false;
            return tailcall(hook, &parser::hdrline_almost_done, p, end);
        }
        // непечатаемый → ошибка
        hook.set(stomptalk_error_inval_frame);
        return p;
    }

    // доклеим остаток «чистого» участка, если fast-path закончился без события
    if (!escape_ && p > s) {
        if (!push(hook, s, (size_t)(p - s))) return p;
    }
    curr = p;
#endif

    // slow-path: или нет SSE2, или ушли в escape-режим
    do {
        if (curr >= end) return curr;
        unsigned char ch = (unsigned char)*curr++;

        if (escape_) {
            switch (ch) {
                case 'n': ch = '\n'; break;
                case 'r': ch = '\r'; break;
                case 'c': ch = ':';  break;
                case '\\': ch = '\\'; break;
                default:
                    hook.set(stomptalk_error_inval_frame);
                    return curr;
            }
            if (!push(hook, (char)ch)) return curr;
            escape_ = false;
            continue;
        }

        // не escape: спецсимволы
        if (ch == '\\') { escape_ = true; continue; }
        if (ch == ':') {
            hook.on_hdr_key(/*id*/0, sbuf_.pop());
            return tailcall(hook, &parser::hdrline_val, curr, end);
        }
        if (ch == '\n') {
            sbuf_.reset(); escape_ = false;
            return tailcall(hook, &parser::hdrline_done, curr, end);
        }
        if (ch == '\r') {
            sbuf_.reset(); escape_ = false;
            return tailcall(hook, &parser::hdrline_almost_done, curr, end);
        }
        // обычный печатаемый no-space
        if ((ch > 32) & (ch <= 126)) {
            if (!push(hook, (char)ch)) return curr;
        } else {
            hook.set(stomptalk_error_inval_frame);
            return curr;
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

    if (!sbuf_.push(ch))
    {
        hook.set(stomptalk_error_too_big);
        return curr;
    }

    //hval_.push(ch);
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
