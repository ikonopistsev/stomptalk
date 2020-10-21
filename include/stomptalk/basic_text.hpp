#pragma once

#include "stomptalk/fnv1a.hpp"
#include <string_view>
#include <cstring>

namespace stomptalk {

#ifndef STOMPTALK_64BIT
#if defined(__LP64__) || (defined(__x86_64__) && \
    defined(__ILP32__)) || defined(_WIN64)
#define STOMPTALK_64BIT 1
#else
#define STOMPTALK_64BIT 0
#endif
#endif // BTDEF_ALLOCATOR_64BIT

#ifndef STOMPTALK_ALIGN
#if STOMPTALK_64BIT == 1
#define STOMPTALK_ALIGN(x) \
            (((x) + static_cast<uint64_t>(7u)) & ~static_cast<uint64_t>(7u))
#else
#define STOMPTALK_ALIGN(x) (((x) + 3u) & ~3u)
#endif // STOMPTALK_64BIT == 1
#endif // STOMPTALK_ALIGN

template<class T, std::size_t L>
class basic_text;

template<std::size_t L>
class basic_text<char, L>
{
public:
    using value_type = char;
    using size_type = std::size_t;
    using pointer = value_type*;
    using const_pointer = const value_type*;
    using iterator = value_type*;
    using const_iterator = const value_type*;
    using string_view = std::basic_string_view<char>;

    constexpr static std::size_t cache_size = STOMPTALK_ALIGN(L);
    constexpr static std::size_t cache_capacity = cache_size - 1u;

private:
    size_type size_{ };
    value_type data_[cache_size];

public:
    basic_text() = default;

    basic_text(const_pointer value, size_type len) noexcept
    {
        assign(value, len);
    }

    basic_text(string_view text) noexcept
    {
        assign(text.data(), text.size());
    }

    template<std::size_t N>
    basic_text(const basic_text<char, N>& other) noexcept
    {
        assign(other.begin(), other.size());
    }

    template<class T>
    basic_text(const T& other) noexcept
    {
        assign(other.begin(), other.size());
    }

    size_type assign(const_pointer value, size_type len) noexcept
    {
        if (len < cache_size)
        {
            size_ = len;
            if (len)
            {
                assert(value);
                std::memcpy(data_, value, len);
            }
            return len;
        }
        return 0;
    }

    size_type assign(string_view other) noexcept
    {
        return assign(other.begin(), other.size());
    }

    template<std::size_t N>
    size_type assign(const basic_text<char, N>& other) noexcept
    {
        return assign(other.begin(), other.size());
    }

    template<class T>
    size_type assign(const T& other) noexcept
    {
        return assign(other.begin(), other.size());
    }

    size_type assign(value_type value) noexcept
    {
        size_ = 1;
        *data_ = value;
        return 1;
    }

    void clear() noexcept
    {
        size_ = 0;
    }

    size_type free_size() const noexcept
    {
        return cache_capacity - size_;
    }

    size_type append(const_pointer value, size_type len) noexcept
    {
        if (len <= free_size())
        {
            if (len)
            {
                assert(value);
                std::memcpy(end(), value, len);
                size_ += len;
            }
            return size_;
        }
        return 0;
    }

    size_type append(string_view other) noexcept
    {
        return append(other.begin(), other.size());
    }

    template<std::size_t N>
    size_type append(const basic_text<char, N>& other) noexcept
    {
        return append(other.begin(), other.size());
    }

    template<class T>
    size_type append(const T& other) noexcept
    {
        return append(other.begin(), other.size());
    }

    size_type append(value_type value) noexcept
    {
        if (size_ < cache_capacity)
        {
            data_[size_++] = value;
            return size_;
        }
        return 0;
    }

    template<std::size_t N>
    basic_text& operator=(const basic_text<char, N>& other) noexcept
    {
        assign(other.data(), other.size());
        return *this;
    }

    basic_text& operator=(string_view other) noexcept
    {
        assign(other.data(), other.size());
        return *this;
    }

    template<class T>
    basic_text& operator=(const T& other) noexcept
    {
        assign(other.data(), other.size());
        return *this;
    }

    basic_text& operator=(value_type value) noexcept
    {
        append(value);
        return *this;
    }

    template<std::size_t N>
    basic_text& operator+=(const basic_text<char, N>& other) noexcept
    {
        append(other.data(), other.size());
        return *this;
    }

    basic_text& operator+=(string_view other) noexcept
    {
        append(other.data(), other.size());
        return *this;
    }

    template<class T>
    basic_text& operator+=(const T& other) noexcept
    {
        append(other.data(), other.size());
        return *this;
    }

    basic_text& operator+=(value_type value) noexcept
    {
        append(value);
        return *this;
    }

    void swap(basic_text& other) noexcept
    {
        basic_text t(*this);
        *this = other;
        other = t;
    }

    size_type resize(size_type size) noexcept
    {
        if (size < cache_size)
        {
            size_ = size;
            return size;
        }

        return 0;
    }

    constexpr size_type capacity() const noexcept
    {
        return cache_capacity;
    }

    iterator begin() noexcept
    {
        return data_;
    }

    const_iterator begin() const noexcept
    {
        return data_;
    }

    const_iterator cbegin() const noexcept
    {
        return begin();
    }

    iterator end() noexcept
    {
        return data_ + size_;
    }

    const_iterator end() const noexcept
    {
        return data_ + size_;
    }

    const_iterator cend() const noexcept
    {
        return end();
    }

    const_pointer data() const noexcept
    {
        return data_;
    }

    pointer data() noexcept
    {
        return data_;
    }

    size_type size() const noexcept
    {
        return size_;
    }

    bool empty() const noexcept
    {
        return size_ == 0;
    }
};

} // namespace stomptalk

template<class C, std::size_t N>
bool operator==(const stomptalk::basic_text<C, N>& lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return sv(lhs) == sv(rhs);
}

template<class C, std::size_t N1, std::size_t N2>
bool operator==(const stomptalk::basic_text<C, N1>& lhs,
    const stomptalk::basic_text<C, N2>& rhs) noexcept
{
    return sv(lhs) == sv(rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator==(const stomptalk::basic_text<C, N>& lhs,
    const basic_other_string<C, O...>& rhs) noexcept
{
    return sv(lhs) == rhs;
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator==(const basic_other_string<C, O...>& lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return lhs == sv(rhs);
}

template<class C, std::size_t N>
bool operator==(const stomptalk::basic_text<C, N>& lhs,
    std::basic_string_view<C> rhs) noexcept
{
    return sv(lhs) == rhs;
}

template<class C, std::size_t N>
bool operator==(std::basic_string_view<C> lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return lhs == sv(rhs);
}

template<class C, std::size_t N1, std::size_t N2>
bool operator!=(const stomptalk::basic_text<C, N1>& lhs,
    const stomptalk::basic_text<C, N2>& rhs) noexcept
{
    return !(lhs == rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator!=(const stomptalk::basic_text<C, N>& lhs,
    const basic_other_string<C, O...>& rhs) noexcept
{
    return !(lhs == rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator!=(const basic_other_string<C, O...>& lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return !(lhs == rhs);
}

template<class C, std::size_t N>
bool operator!=(const stomptalk::basic_text<C, N>& lhs,
    std::basic_string_view<C> rhs) noexcept
{
    return !(lhs == rhs);
}

template<class C, std::size_t N>
bool operator!=(std::basic_string_view<C> lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return !(lhs == rhs);
}

template<class C, std::size_t N1, std::size_t N2>
bool operator<(const stomptalk::basic_text<C, N1>& lhs,
    const stomptalk::basic_text<C, N2>& rhs) noexcept
{
    return sv(lhs) < sv(rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator<(const stomptalk::basic_text<C, N>& lhs,
    const basic_other_string<C, O...>& rhs) noexcept
{
    return sv(lhs) < rhs;
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator<(const basic_other_string<C, O...>& lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return lhs < sv(rhs);
}

template<class C, std::size_t N>
bool operator<(const stomptalk::basic_text<C, N>& lhs,
    std::basic_string_view<C> rhs) noexcept
{
    return sv(lhs) < rhs;
}

template<class C, std::size_t N>
bool operator<(std::basic_string_view<C> lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return lhs < sv(rhs);
}

template<class C, std::size_t N1, std::size_t N2>
bool operator>(const stomptalk::basic_text<C, N1>& lhs,
    const stomptalk::basic_text<C, N2>& rhs) noexcept
{
    return rhs < lhs;
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator>(const stomptalk::basic_text<C, N>& lhs,
    const basic_other_string<C, O...>& rhs) noexcept
{
    return rhs < lhs;
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator>(const basic_other_string<C, O...>& lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return rhs < lhs;
}

template<class C, std::size_t N>
bool operator>(const stomptalk::basic_text<C, N>& lhs,
    std::basic_string_view<C> rhs) noexcept
{
    return rhs < lhs;
}

template<class C, std::size_t N>
bool operator>(std::basic_string_view<C> lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return rhs < lhs;
}

template<class C, std::size_t N1, std::size_t N2>
bool operator<=(const stomptalk::basic_text<C, N1>& lhs,
    const stomptalk::basic_text<C, N2>& rhs) noexcept
{
    return !(lhs > rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator<=(const stomptalk::basic_text<C, N>& lhs,
    const basic_other_string<C, O...>& rhs) noexcept
{
    return !(lhs > rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator<=(const basic_other_string<C, O...>& lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return !(lhs > rhs);
}

template<class C, std::size_t N>
bool operator<=(const stomptalk::basic_text<C, N>& lhs,
    std::basic_string_view<C> rhs) noexcept
{
    return !(lhs > rhs);
}

template<class C, std::size_t N>
bool operator<=(std::basic_string_view<C> lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return !(lhs > rhs);
}

template<class C, std::size_t N1, std::size_t N2>
bool operator>=(const stomptalk::basic_text<C, N1>& lhs,
    const stomptalk::basic_text<C, N2>& rhs) noexcept
{
    return !(lhs < rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator>=(const stomptalk::basic_text<C, N>& lhs,
    const basic_other_string<C, O...>& rhs) noexcept
{
    return !(lhs < rhs);
}

template<class C, std::size_t N,
         template<class...> class basic_other_string, class ...O>
bool operator>=(const basic_other_string<C, O...>& lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return !(lhs < rhs);
}

template<class C, std::size_t N>
bool operator>=(const stomptalk::basic_text<C, N>& lhs,
    std::basic_string_view<C> rhs) noexcept
{
    return !(lhs < rhs);
}

template<class C, std::size_t N>
bool operator>=(std::basic_string_view<C> lhs,
    const stomptalk::basic_text<C, N>& rhs) noexcept
{
    return !(lhs < rhs);
}

namespace std {

template<std::size_t N>
struct hash<stomptalk::basic_text<char, N>>
{
    auto operator()(const stomptalk::basic_text<char, N>& t) const noexcept
    {
        return stomptalk::get_hash(t);
    }
};

} // namespace std
