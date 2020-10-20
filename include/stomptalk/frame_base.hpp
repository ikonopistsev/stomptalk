#pragma once

#include "stomptalk/header.hpp"
#include <functional>

namespace stomptalk {
class frame_base
{
public:
    frame_base() = default;
    virtual ~frame_base() = default;

    // all non ref
    virtual void push_header(std::string_view key, std::string_view value) = 0;

    // all ref
    // prepared_key_value like "\nsome_key:some_value";
    virtual void push_header_ref(std::string_view prepared_key_value) = 0;

    // key ref, val non ref
    // prepared_key like "\nsome_key:"
    virtual void push_header_val(std::string_view prepared_key,
        std::string_view value) = 0;

    virtual void push_method(std::string_view method) = 0;

    // выставить method
    template<class T>
    void push(method::known_ref<T> method)
    {
        push_method(method.value());
    }

    // выставить хидер
    template<class K, class V>
    void push(header::base<K, V> hdr)
    {
        push_header(hdr.key(), hdr.value());
    }

    // выставить известный хидер
    // добавляем ключ как ссылку на строку
    template<class K, class V>
    void push(header::known<K, V> hdr)
    {
        push_header_val(hdr.key(), hdr.value());
    }

    // выставить известный хидер
    // добавляем ключ как ссылку на строку
    template<class K>
    void push(header::known_ref<K> hdr)
    {
        push_header_ref(hdr.key_val());
    }
};

} // namespace stomptalk
