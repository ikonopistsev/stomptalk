#pragma once

#include "stomptalk/header.hpp"
//#include "btdef/allocator/wrapper.hpp"
//#include "btdef/hash.hpp"

#include <array>
#include <limits>
#include <vector>
#include <algorithm>
#include <unordered_map>

namespace stomptalk {

class header_store
{
    typedef std::pair<std::string, std::string> value_type;
    typedef std::vector<value_type> storage_type;
    typedef storage_type::iterator iterator;
    typedef storage_type::const_iterator const_iterator;

    typedef std::size_t index_type;
    typedef std::size_t hash_type;
    typedef std::unordered_map<hash_type, index_type> map_index_type;
    typedef std::array<index_type, header::num_id::count> known_index_type;

    static constexpr auto peeled = std::numeric_limits<index_type>::max();
    storage_type store_{};
    iterator cursor_{store_.end()};
    map_index_type header_map_{};
    known_index_type header_index_{};

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

        auto i = store_.emplace(store_.end(),
            std::string(key.data(), key.size()),
            std::string(value.data(), value.size()));

        // добавив новый элемент
        // курсор указыват на конец вектора
        cursor_ = store_.end();

        // возвращаем позицию добавленного элемента
        return i;
    }

    std::string_view get(index_type index) const noexcept
    {
        static const std::string_view empty("");
        std::string_view rc = empty;
        if (index != peeled)
            rc = std::get<1>(store_[static_cast<std::size_t>(index)]);
        return rc;
    }

    index_type internal_set(std::string_view key, std::string_view value)
    {
        auto item = emplace_back(key, value);
        auto rc = static_cast<index_type>(std::distance(store_.cbegin(), item));
        std::hash<std::string_view> hf;
        header_map_[hf(key)] = rc;
        return rc;
    }

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

    void set(std::size_t num_id, std::string_view key, std::string_view value)
    {
        header_index_[num_id] = internal_set(key, value);
    }

    template<class T>
    std::string_view get(stomptalk::header::basic<T>) const noexcept
    {
        return get(header_index_[T::num]);
    }

    std::string_view get(std::string_view key) const noexcept
    {
        static const std::string e;
        std::hash<std::string_view> f;
        auto i = header_map_.find(f(key));
        return (i != header_map_.end()) ?
            get(std::get<1>(*i)) : e;
    }

    void clear() noexcept
    {
        // сбрасываем позицию
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

    std::string dump() const
    {
        std::string rc;
        rc.reserve(320);

        for (auto& h : *this)
        {
            if (!rc.empty())
                rc += '\n';

            rc += std::get<0>(h);
            rc += ':';
            rc += std::get<1>(h);
        }

        return rc;
    }
};

//class header_store
//{
//    typedef std::basic_string<char, std::char_traits<char>,
//        btdef::allocator::wrapper<char>> string_type;
//    typedef std::pair<string_type, string_type> value_type;
//    typedef std::vector<value_type, btdef::allocator::wrapper<value_type>>
//        storage_type;
//    typedef storage_type::const_iterator const_iterator;

//    typedef std::size_t index_type;
//    typedef btdef::hash::fnv1a::value_t hash_type;
//    typedef std::unordered_map<hash_type, index_type> map_index_type;
//    typedef std::array<index_type, header::num_id::count>
//        known_index_type;

//    static constexpr auto mem_size = 8192u;
//    static constexpr auto store_reserve = 8u;
//    static constexpr auto peeled = std::numeric_limits<index_type>::max();

//    char mem_[mem_size];
//    btdef::allocator::pool pool_{mem_, sizeof(mem_)};
//    storage_type store_{btdef::allocator::wrapper<value_type>(pool_)};
//    map_index_type header_map_{};
//    known_index_type header_index_{};

//    const_iterator emplace_back(std::string_view key, std::string_view value)
//    {
//        return store_.emplace(store_.end(),
//            string_type(key.data(), key.size(),
//                        btdef::allocator::wrapper<char>(pool_)),
//            string_type(value.data(), value.size(),
//                        btdef::allocator::wrapper<char>(pool_)));
//    }

//    std::string_view get(index_type index) const noexcept
//    {
//        static const std::string_view empty("");
//        std::string_view rc = empty;
//        if (index != peeled)
//            rc = std::get<1>(store_[static_cast<std::size_t>(index)]);
//        return rc;
//    }

//    index_type internal_set(std::string_view key, std::string_view value)
//    {
//        auto item = emplace_back(key, value);
//        auto rc = std::distance(store_.cbegin(), item);
//        btdef::hash::fnv1a f;
//        header_map_[f(key)] = rc;
//        return rc;
//    }

//public:
//    header_store() noexcept
//    {
//        // зануляем индекс известных типов
//        header_index_.fill(peeled);
//        store_.reserve(store_reserve);
//        header_map_.reserve(store_reserve * 2);
//    }

//    void set(std::string_view key, std::string_view value)
//    {
//        internal_set(key, value);
//    }

//    void set(std::size_t num_id, std::string_view key, std::string_view value)
//    {
//        header_index_[num_id] = internal_set(key, value);
//    }

//    template<class T>
//    std::string_view get(stomptalk::header::basic<T>) const noexcept
//    {
//        return get(header_index_[T::num]);
//    }

//    std::string_view get(std::string_view key) const noexcept
//    {
//        static const std::string e;
//        btdef::hash::fnv1a f;
//        auto i = header_map_.find(f(key));
//        return (i != header_map_.end()) ?
//            get(std::get<1>(*i)) : e;
//    }

//    void clear() noexcept
//    {
//        // очищаем вектор
//        store_.clear();
//        // удаляем его память
//        store_.shrink_to_fit();
//        // чистим аллокатор
//        pool_.clear();
//        // резервиурем место в векторе
//        store_.reserve(store_reserve);

//        // зануляем индекс известных типов
//        header_index_.fill(peeled);

//        // мапа всегда содержит ключи
//        // зануляем только значения
//        for (auto& h : header_map_)
//            std::get<1>(h) = peeled;
//    }

//    const_iterator begin() const noexcept
//    {
//        return store_.begin();
//    }

//    const_iterator end() const noexcept
//    {
//        return store_.end();
//    }

//    const_iterator cbegin() const noexcept
//    {
//        return begin();
//    }

//    const_iterator cend() const noexcept
//    {
//        return end();
//    }

//    std::size_t size() const noexcept
//    {
//        return store_.size();
//    }

//    bool empty() const noexcept
//    {
//        return store_.empty();
//    }

//    std::string dump() const
//    {
//        std::string rc;
//        rc.reserve(320);

//        for (auto& h : *this)
//        {
//            if (!rc.empty())
//                rc += '\n';

//            rc += std::get<0>(h);
//            rc += ':';
//            rc += std::get<1>(h);
//        }

//        return rc;
//    }
//};

} // namespace stomptalk
