#pragma once

#include "stomptalk/parser.h"
#include "backend/swar.hpp"
#include <cassert>
#include <limits>

namespace stomptalk {
namespace detail {

template<std::size_t Size>
STOMPTALK_FORCE_INLINE
constexpr stomptalk_view name_view(const char (&text)[Size]) noexcept
{
    return {text, Size - 1};
}

template<class Id, Id Value>
struct name_entry
{
    using id_type = Id;
    static constexpr Id value = Value;
};

template<class First, class... Rest>
class name_group
{
    using id_type = typename First::id_type;

    struct positions
    {
        std::size_t first;
        std::size_t second;
    };

    static constexpr bool unique(std::size_t first, std::size_t second) noexcept
    {
        const stomptalk_view names[] = {First::text(), Rest::text()...};
        for (std::size_t i = 0; i < sizeof...(Rest) + 1; ++i)
            for (std::size_t j = 0; j < i; ++j)
                if (names[i].data[first] == names[j].data[first] &&
                    names[i].data[second] == names[j].data[second])
                    return false;
        return true;
    }

    static constexpr positions select() noexcept
    {
        // A discriminator is extra work for just one or two candidates.
        if (sizeof...(Rest) < 2)
            return {size, size};

        for (std::size_t i = 0; i < size; ++i)
            if (unique(i, i))
                return {i, i};

        for (std::size_t i = 0; i < size; ++i)
            for (std::size_t j = i + 1; j < size; ++j)
                if (unique(i, j))
                    return {i, j};

        // A future dictionary need not have a unique one/two-byte selector.
        return {size, size};
    }

    STOMPTALK_FORCE_INLINE
    static unsigned key(const char* data) noexcept
    {
        constexpr auto at = select();
        if (at.first == size)
            return 0;

        const auto first = static_cast<unsigned char>(data[at.first]);
        if (at.first == at.second)
            return first;

        return first | (unsigned(static_cast<unsigned char>(data[at.second])) << 8);
    }

    template<class Backend, class Entry>
    STOMPTALK_FORCE_INLINE
    static id_type find(const char* data, unsigned candidate) noexcept
    {
        return candidate == key(Entry::text().data) &&
            Backend::template equal<size>(data, Entry::text().data)
                ? Entry::value : unknown;
    }

    template<class Backend, class Entry, class Next, class... Tail>
    STOMPTALK_FORCE_INLINE
    static id_type find(const char* data, unsigned candidate) noexcept
    {
        constexpr auto selected = select();
        if (candidate == key(Entry::text().data))
        {
            if (Backend::template equal<size>(data, Entry::text().data))
                return Entry::value;
            if (selected.first != size)
                return unknown;
        }
        return find<Backend, Next, Tail...>(data, candidate);
    }

    static constexpr bool same_size() noexcept
    {
        const std::size_t lengths[] = {First::text().size, Rest::text().size...};
        for (auto length : lengths)
            if (length != size)
                return false;
        return true;
    }

public:
    static constexpr std::size_t size = First::text().size;
    static constexpr id_type unknown = (std::numeric_limits<id_type>::max)();
    static_assert(size != 0 && same_size(), "A name group must have one nonzero length");

    template<class Backend = backend::swar>
    STOMPTALK_FORCE_INLINE
    static id_type find(const char* data) noexcept
    {
        // The outer size switch has already checked the input range.
        if (sizeof...(Rest) == 0)
            return Backend::template equal<size>(data, First::text().data)
                ? First::value : unknown;

        return find<Backend, First, Rest...>(data, key(data));
    }
};

} // namespace detail
} // namespace stomptalk
