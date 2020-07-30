#pragma once

#include "stomptalk/rabbitmq.hpp"

#include <array>
#include <vector>
#include <unordered_map>

namespace stomptalk {
namespace rabbitmq {

class header_store
{
    typedef std::pair<std::string, std::string> value_type;
    typedef std::vector<value_type> storage_type;
    typedef storage_type::const_iterator const_iterator;
    typedef std::unordered_map<std::string, const_iterator> map_index_type;
    typedef std::array<const_iterator, num_id::last_num_id + 1> known_index_type;
    storage_type store_{};
    map_index_type header_map_{};
    known_index_type header_index_{};

    const_iterator emplace_back(std::string key, std::string value)
    {
        return store_.emplace(store_.end(),
            std::move(key), std::move(value));
    }

    const std::string& get(const_iterator i) const noexcept
    {
        // первый элемент пустой
        if (i != store_.begin())
            return std::get<1>(*i);

        static const std::string rc;
        return rc;
    }

    const_iterator internal_set(std::string key, std::string value)
    {
        auto rc = emplace_back(std::move(key), std::move(value));
        header_map_[std::get<0>(*rc)] = rc;
        return rc;
    }

public:
    header_store()
    {
        store_.reserve(16);
        store_.push_back(std::make_pair(std::string(), std::string()));
    }

    void set(std::string key, std::string value)
    {
        internal_set(std::move(key), std::move(value));
    }

    void set(std::size_t num_id, std::string key, std::string value)
    {
        header_index_[num_id] = internal_set(std::move(key), std::move(value));
    }

    template<class T>
    const std::string& get(stomptalk::header::basic<T>) const noexcept
    {
        return get(header_index_[T::num]);
    }

    const std::string& get(const std::string& key) const noexcept
    {
        static const std::string e;
        auto f = header_map_.find(key);
        return (f != header_map_.end()) ?
            get(std::get<1>(*f)) : e;
    }

    void clear() noexcept
    {
        store_.clear();
        // первый элемент зарезервирован
        store_.push_back(std::make_pair(std::string(), std::string()));

        // отсутсвие элемента это ссылка на первый в массиве
        auto empty = store_.begin();

        // зануляем индекс известных типов
        for (auto& h : header_index_)
            h = empty;

        // мапа всегда содержит ключи
        // зануляем только значения
        for (auto& h : header_map_)
            std::get<1>(h) = empty;
    }

    const_iterator begin() const noexcept
    {
        return store_.begin() + 1;
    }

    const_iterator end() const noexcept
    {
        return store_.end();
    }

    std::string dump() const
    {
        std::string rc;
        for (auto& hdr : *this)
        {
            if (!rc.empty())
                rc += '\n';
            rc += std::get<0>(hdr);
            rc += ':';
            rc += std::get<1>(hdr);
        }
        return rc;
    }
};

} // namespace rabbitmq
} // namespace stomptalk
