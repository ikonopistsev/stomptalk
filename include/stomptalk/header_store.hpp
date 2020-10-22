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

class header_store
{
public:
    using key_type = std::string;
    using val_type = std::string;
    //using key_type = basic_text<char, 64>;
    //using val_type = basic_text<char, 256>;

    using value_type = std::pair<key_type, val_type>;
    using store_type = std::vector<value_type>;
    using iterator = store_type::iterator;
    using const_iterator = store_type::const_iterator;

    using index_type = std::size_t;
    using hash_type = std::size_t;
    using map_index_type = std::unordered_map<hash_type, index_type>;
    using known_index_type = std::array<index_type, header::num_id::count>;

private:
    constexpr static auto peeled = std::numeric_limits<index_type>::max();

    store_type store_{};
    // в конструкторе указываем на конец списка
    iterator cursor_{store_.end()};
    known_index_type header_index_{};
    map_index_type header_map_{};

private:
    const_iterator assign_back(std::string_view key, std::string_view value);

    const_iterator emplace_back(std::string_view key, std::string_view value);

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
        std::string_view key, std::string_view value);

public:
    header_store() noexcept
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

    void clear() noexcept;

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

    store_type storage() const;

    std::string dump_known() const;

    std::string dump() const;
};

} // namespace stomptalk
