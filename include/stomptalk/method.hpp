#pragma once

#include "stomptalk/method.h"
#include <cstddef>
#include <cstdint>
#include <cstring>

namespace stomptalk {

namespace detail {

struct method_text
{
    const char* name;
    std::size_t size;
};

constexpr method_text method_texts[] = {
    {"", 0}, {"ABORT", 5}, {"ACK", 3}, {"BEGIN", 5}, {"COMMIT", 6}, {"CONNECT", 7},
    {"CONNECTED", 9}, {"DISCONNECT", 10}, {"ERROR", 5}, {"MESSAGE", 7}, {"NACK", 4},
    {"RECEIPT", 7}, {"SEND", 4}, {"STOMP", 5}, {"SUBSCRIBE", 9}, {"UNSUBSCRIBE", 11}
};

template<std::size_t N>
inline bool same_text(const char* at, const char (&text)[N]) noexcept
{
    return std::memcmp(at, text, N - 1) == 0;
}

} // namespace detail

// Длина почти определяет метод, а memcmp с постоянным размером встраивается в сравнения.
inline stomptalk_method method_from(const char* at, std::size_t len) noexcept
{
    using detail::same_text;

    switch (len)
    {
    case 3:
        return same_text(at, "ACK") ? st_method_ack : st_method_unknown;
    case 4:
        return same_text(at, "SEND") ? st_method_send :
            same_text(at, "NACK") ? st_method_nack : st_method_unknown;
    case 5:
        return same_text(at, "BEGIN") ? st_method_begin :
            same_text(at, "ABORT") ? st_method_abort :
            same_text(at, "ERROR") ? st_method_error :
            same_text(at, "STOMP") ? st_method_stomp : st_method_unknown;
    case 6:
        return same_text(at, "COMMIT") ? st_method_commit : st_method_unknown;
    case 7:
        return same_text(at, "MESSAGE") ? st_method_message :
            same_text(at, "RECEIPT") ? st_method_receipt :
            same_text(at, "CONNECT") ? st_method_connect : st_method_unknown;
    case 9:
        return same_text(at, "SUBSCRIBE") ? st_method_subscribe :
            same_text(at, "CONNECTED") ? st_method_connected : st_method_unknown;
    case 10:
        return same_text(at, "DISCONNECT") ? st_method_disconnect : st_method_unknown;
    case 11:
        return same_text(at, "UNSUBSCRIBE") ? st_method_unsubscribe : st_method_unknown;
    default:
        return st_method_unknown;
    }
}

// Имя метода, пустое для st_method_unknown.
inline const char* method_name(stomptalk_method method) noexcept
{
    return detail::method_texts[method].name;
}

} // namespace stomptalk
