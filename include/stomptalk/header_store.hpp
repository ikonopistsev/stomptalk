#pragma once

#include "stomptalk/fnv1a.hpp"
#include "stomptalk/header.hpp"
#include "stomptalk/sv.hpp"
#include <array>
#include <limits>
#include <vector>
#include <algorithm>
#include <unordered_map>

namespace stomptalk {

template<class K, class V>
class basic_header_store
{
public:
    using key_type = K;
    using val_type = V;
    using value_type = typename std::pair<K, V>;
    using store_type = std::vector<value_type>;
    using iterator = typename store_type::iterator;
    using const_iterator = typename store_type::const_iterator;

    using index_type = std::size_t;
    using hash_type = std::size_t;
    using map_index_type = std::unordered_map<hash_type, index_type>;
    using known_index_type = std::array<index_type, header::num_id::count>;

private:
    constexpr static index_type peeled = std::numeric_limits<index_type>::max();

    store_type store_{};
    // в конструкторе указываем на конец списка
    iterator cursor_{store_.end()};
    known_index_type header_index_{};
    map_index_type header_map_{};

private:
    const_iterator assign_back(std::string_view key, std::string_view value)
    {
        auto& pair = *cursor_;
        std::get<0>(pair) = key;
        std::get<1>(pair) = value;
        // возвращаем позицию текущего элемента
        // и смещаем курсор
        return cursor_++;
    }

    const_iterator emplace_back(std::string_view key, std::string_view value)
    {
        if (cursor_ < store_.end())
            return assign_back(key, value);

        cursor_ = store_.emplace(cursor_, key, value);

        // возвращаем позицию добавленного элемента
        return cursor_++;
    }

    std::string_view get(index_type index) const noexcept
    {
        return (index == peeled) ? std::string_view() :
            sv(std::get<1>(store_[index]));
    }

    index_type internal_set(std::string_view key, std::string_view value)
    {
        return internal_set(stomptalk::get_hash(key), key, value);
    }

    index_type internal_set(std::size_t key_hash,
        std::string_view key, std::string_view value)
    {
        auto item = emplace_back(key, value);
        auto rc = static_cast<index_type>(std::distance(store_.cbegin(), item));
        header_map_[key_hash] = rc;
        return rc;
    }

public:
    basic_header_store() noexcept
    {
        // зануляем индекс известных типов
        header_index_.fill(peeled);
    }

    void set(std::string_view key, std::string_view value)
    {
        internal_set(key, value);
    }

    void set(std::size_t num_id, std::size_t key_hash,
             std::string_view key, std::string_view value)
    {
        header_index_[num_id] = internal_set(key_hash, key, value);
    }

    template<class T>
    std::string_view get(T) const noexcept
    {
        return get(header_index_[T::num]);
    }

    std::string_view get(std::string_view key) const noexcept
    {
        auto i = header_map_.find(stomptalk::get_hash(key));
        return (i != header_map_.end()) ?
            get(std::get<1>(*i)) : std::string_view();
    }

    void clear() noexcept
    {
        // сбрасываем позицию !на начало!
        cursor_ = store_.begin();

        // зануляем индекс известных типов
        header_index_.fill(peeled);

        // мапа всегда содержит ключи
        // зануляем только значения
        for (auto& h : header_map_)
            std::get<1>(h) = peeled;
    }

    const_iterator begin() const noexcept
    {
        return store_.begin();
    }

    const_iterator end() const noexcept
    {
        return cursor_;
    }

    const_iterator cbegin() const noexcept
    {
        return begin();
    }

    const_iterator cend() const noexcept
    {
        return end();
    }

    index_type size() const noexcept
    {
        return static_cast<index_type>(std::distance(begin(), end()));
    }

    bool empty() const noexcept
    {
        return size() == 0;
    }

    store_type storage() const
    {
        store_type rc;
        rc.insert(rc.end(), store_.cbegin(), const_iterator(cursor_));
        return rc;
    }

    std::string dump_known() const
    {
        std::string rc;
        rc.reserve(320);

        for (auto& i: header_index_)
        {
            if (i != peeled)
            {
                if (!rc.empty())
                    rc += '\n';

                auto& h = store_[i];
                rc += sv(std::get<0>(h));
                rc += ':';
                rc += sv(std::get<1>(h));
            }
        }

        return rc;
    }

    std::string dump() const
    {
        std::string rc;
        rc.reserve(320);

        for (auto& h : *this)
        {
            if (!rc.empty())
                rc += '\n';

            rc += sv(std::get<0>(h));
            rc += ':';
            rc += sv(std::get<1>(h));
        }

        return rc;
    }
};

using header_store = basic_header_store<std::string, std::string>;
//using header_store =
//    basic_header_store<basic_text<char, 64>, basic_text<char, 256>>;


} // namespace stomptalk
