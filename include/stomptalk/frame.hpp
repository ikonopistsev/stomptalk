#pragma once

#include "stomptalk/header.hpp"

namespace stomptalk {
namespace frame {

class base
{
protected:
    std::size_t header_mask_{};
    virtual void append(std::string_view text) = 0;
    virtual void append_ref(std::string_view text) = 0;

public:
    base() = default;
    virtual ~base() = default;

    virtual void reserve(std::size_t len) = 0;

    // выставить метод
    template<class T>
    void push(T)
    {
        append_ref(T::text);
        append_ref(sv("\n"));
    }

    // выставить хидер
    template<class K, class V>
    void push(header::base<K, V> hdr)
    {
        append(hdr.key());
        append_ref(sv(":"));
        append(hdr.value());
        append_ref(sv("\n"));
    }

    // выставить хидер
    template<class K, class V>
    void push(header::base_ref<K, V> hdr)
    {
        append_ref(hdr.key());
        append_ref(sv(":"));
        append_ref(hdr.value());
        append_ref(sv("\n"));
    }

    // выставить известный хидер
    // добавляем ключ как ссылку на строку
    template<class K, class V>
    void push(header::known<K, V> hdr)
    {
        append_ref(hdr.key());
        append_ref(sv(":"));
        append(hdr.value());
        append_ref(sv("\n"));
        set_mask(K());
    }

    // выставить известный хидер
    // добавляем ключ как ссылку на строку
    template<class K, class V>
    void push(header::known_ref<K, V> hdr)
    {
        append_ref(hdr.key());
        append_ref(sv(":"));
        append_ref(hdr.value());
        append_ref(sv("\n"));
        set_mask(K());
    }

    template<class T>
    constexpr void set_mask(T) noexcept
    {
        header_mask_ |= T::mask;
    }

    std::size_t mask() const noexcept
    {
        return header_mask_;
    }

    template<class T>
    bool mask(T) const noexcept
    {
        std::cout << T::mask << ' ' << (header_mask_ & T::mask) << std::endl;
        return (header_mask_ & T::mask) > 0;
    }

};

} // namespace frame
} // namespace stomptalk
