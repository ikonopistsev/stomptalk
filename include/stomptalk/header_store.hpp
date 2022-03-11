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

template<class V>
class basic_header_store
{
public:
    using val_type = V;
    using hash_type = fnv1a::type;
    using map_type = std::unordered_map<hash_type, std::pair<val_type, val_type>>;

private:
    constexpr static std::string_view peeled = " ";
    map_type store_{};

public:
    basic_header_store() = default;

    void set(std::string_view key, std::string_view value)
    {
        auto key_hash = fnv1a::calc_hash<std::string_view>(key.begin(), key.end());
        set(key_hash, key, value);
    }

    void set(std::size_t key_hash, std::string_view key, std::string_view value)
    {
        store_.emplace(key_hash, std::make_pair(val_type{key}, val_type{value}));
    }

    std::string_view get(hash_type key_hash) const noexcept
    {
        return { std::get<1>(store_[key_hash]) };
    }

    template<class T>
    std::string_view get(T) const noexcept
    {
        return get(T::text_hash);
    }

    std::string_view get(std::string_view key) const noexcept
    {
        auto key_hash = fnv1a::calc_hash<std::string_view>(key.begin(), key.end());
        return get(key_hash);
    }

    void clear() noexcept
    {
    }

    auto begin() const noexcept
    {
        return store_.begin();
    }

    auto end() const noexcept
    {
        return store_.end();
    }

    auto cbegin() const noexcept
    {
        return begin();
    }

    auto cend() const noexcept
    {
        return end();
    }

    auto size() const noexcept
    {
        return store_.size();
    }
};

using header_store = basic_header_store<std::string>;

} // namespace stomptalk
