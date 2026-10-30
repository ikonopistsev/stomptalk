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

// Дерево по буквам, которые различают методы. В ячейке лежит метод
// или номер следующего узла, считая от first_method_node.
constexpr std::uint8_t first_method_node = 16;

struct method_node
{
    std::uint8_t position;
    std::uint8_t next[26];
};

struct method_tree
{
    method_node nodes[4];
};

constexpr std::uint8_t cell(stomptalk_method m) noexcept
{
    return static_cast<std::uint8_t>(m);
}

constexpr method_tree make_method_tree() noexcept
{
    method_tree t{};

    auto& root = t.nodes[0];
    root.position = 0;
    root.next['A' - 'A'] = first_method_node + 1;
    root.next['B' - 'A'] = cell(st_method_begin);
    root.next['C' - 'A'] = first_method_node + 2;
    root.next['D' - 'A'] = cell(st_method_disconnect);
    root.next['E' - 'A'] = cell(st_method_error);
    root.next['M' - 'A'] = cell(st_method_message);
    root.next['N' - 'A'] = cell(st_method_nack);
    root.next['R' - 'A'] = cell(st_method_receipt);
    root.next['S' - 'A'] = first_method_node + 3;
    root.next['U' - 'A'] = cell(st_method_unsubscribe);

    auto& a = t.nodes[1];
    a.position = 1;
    a.next['B' - 'A'] = cell(st_method_abort);
    a.next['C' - 'A'] = cell(st_method_ack);

    auto& c = t.nodes[2];
    c.position = 2;
    c.next['M' - 'A'] = cell(st_method_commit);
    c.next['N' - 'A'] = cell(st_method_connect);

    auto& s = t.nodes[3];
    s.position = 1;
    s.next['E' - 'A'] = cell(st_method_send);
    s.next['T' - 'A'] = cell(st_method_stomp);
    s.next['U' - 'A'] = cell(st_method_subscribe);

    return t;
}

constexpr method_tree method_tree_table = make_method_tree();

} // namespace detail

// Дерево только выбирает кандидата по нескольким буквам, проверяет его memcmp в конце.
inline stomptalk_method method_from(const char* at, std::size_t len) noexcept
{
    using namespace detail;

    // самый короткий метод ACK, поэтому дерево может читать до третьей буквы
    if (len < 3)
        return st_method_unknown;

    std::uint8_t found = first_method_node;
    do {
        const auto& node = method_tree_table.nodes[found - first_method_node];
        auto letter = static_cast<unsigned>(static_cast<unsigned char>(at[node.position])) - 'A';
        if (letter >= 26)
            return st_method_unknown;
        found = node.next[letter];
    } while (found >= first_method_node);

    // CONNECT и CONNECTED совпадают по всем буквам более короткого
    auto method = static_cast<stomptalk_method>(found);
    if ((method == st_method_connect) && (len == method_texts[st_method_connected].size))
        method = st_method_connected;

    const auto& text = method_texts[method];
    return ((method != st_method_unknown) && (len == text.size) &&
        (std::memcmp(at, text.name, len) == 0)) ? method : st_method_unknown;
}

// Имя метода, пустое для st_method_unknown.
inline const char* method_name(stomptalk_method method) noexcept
{
    return detail::method_texts[method].name;
}

} // namespace stomptalk
