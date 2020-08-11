#pragma once

#include "stomptalk/header.hpp"

namespace stomptalk {
namespace frame {

class base
{
protected:
    virtual void append(std::string_view text) = 0;
    virtual void append_ref(std::string_view text) = 0;

public:
    base() = default;
    virtual ~base() = default;

    virtual void reserve(std::size_t len) = 0;

    // выставить метод
    template<std::size_t N>
    void push(strref<N> val)
    {
        append_ref(val);
        append_ref(make_ref("\n"));
    }

    // выставить хидер
    template<class K, class V>
    void push(header::base<K, V> hdr)
    {
        append(hdr.key());
        append_ref(make_ref(":"));
        append(hdr.value());
        append_ref(make_ref("\n"));
    }

    // выставить известный хидер
    // добавляем ключ как ссылку на строку
    template<class T>
    void push(header::basic<T> hdr)
    {
        append_ref(hdr.key());
        append_ref(make_ref(":"));
        append(hdr.value());
        append_ref(make_ref("\n"));
    }
};

} // namespace frame
} // namespace stomptalk
