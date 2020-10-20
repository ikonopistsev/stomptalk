#include "stomptalk/header_store.hpp"

using namespace stomptalk;

void header_store::clear() noexcept
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

header_store::const_iterator header_store::assign_back(
    std::string_view key, std::string_view value)
{
    auto& pair = *cursor_;
    std::get<0>(pair) = key;
    std::get<1>(pair) = value;
    // возвращаем позицию текущего элемента
    // и смещаем курсор
    return cursor_++;
}

header_store::const_iterator header_store::emplace_back(
    std::string_view key, std::string_view value)
{
    if (cursor_ < store_.end())
        return assign_back(key, value);

    cursor_ = store_.emplace(cursor_, key, value);

    // возвращаем позицию добавленного элемента
    return cursor_++;
}

header_store::index_type header_store::internal_set(std::size_t key_hash,
    std::string_view key, std::string_view value)
{
    auto item = emplace_back(key, value);
    auto rc = static_cast<index_type>(std::distance(store_.cbegin(), item));
    header_map_[key_hash] = rc;
    return rc;
}

header_store::store_type header_store::storage() const
{
    store_type rc;
    rc.insert(rc.end(), store_.cbegin(), const_iterator(cursor_));
    return rc;
}

std::string header_store::dump_known() const
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

std::string header_store::dump() const
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
