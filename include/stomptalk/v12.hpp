#pragma once

#include "stomptalk/frame_base.hpp"

#include <string>
#include <vector>
#include <functional>

#include <cassert>
#include <cstdint>
#include <unordered_map>

namespace stomptalk {
namespace v12 {

class heart_beat
{
    std::size_t cx_;
    std::size_t cy_;

public:
    constexpr heart_beat(std::size_t cx, std::size_t cy = 0) noexcept
        : cx_(cx)
        , cy_(cy)
    {   }

    void apply(frame_base& frame) const
    {
        auto t = std::to_string(cx_);
        t += ',';
        t += std::to_string(cy_);
        frame.push(header::heart_beat(t));
    }
};

template<class T>
class conntect_basic
{
    T that_{};

public:
    conntect_basic(conntect_basic&&) = default;

    explicit conntect_basic(const std::string& host,
                            std::size_t size_reserve = 320)
    {
        that_.reserve(size_reserve);
        that_.push(method::tag::connect::name());
        push(header::ver12());
        push(header::host(host));
    }

    conntect_basic(const std::string& host, const std::string& login,
        std::size_t size_reserve = 320)
    {
        that_.reserve(size_reserve);
        that_.push(method::tag::connect::name());
        push(header::ver12());
        push(header::host(host));
        push(header::login(login));
    }

    conntect_basic(const std::string& host, const std::string& login,
        const std::string& passcode, std::size_t size_reserve = 320)
    {
        that_.reserve(size_reserve);
        that_.push(method::tag::connect::name());
        push(header::ver12());
        push(header::host(host));
        push(header::login(login));
        push(header::passcode(passcode));
    }

    void push(header::fixed hdr)
    {
        that_.push(hdr);
    }

    void push(heart_beat val)
    {
        val.apply(that_);
    }

    template<class B>
    void write(B& output)
    {
        that_.write(output);
    }

    std::string str() const
    {
        return that_.str();
    }
};

template<class T>
class subscribe_basic
{
    T that_{};

public:
    subscribe_basic(const std::string& destination, const std::string& id,
              std::size_t size_reserve = 320)
    {
        that_.reserve(size_reserve);
        that_.push(method::tag::subscribe::name());
        push(header::destination(destination));
        push(header::id(id));
    }

    void push(header::fixed hdr)
    {
        that_.push(hdr);
    }

    template<class B>
    void write(B& output)
    {
        that_.write(output);
    }

    std::string str() const
    {
        return that_.str();
    }
};

template<class T>
class send_basic
{
    T that_{};

public:
    explicit send_basic(const std::string& dest, std::size_t size_reserve = 320)
    {
        that_.reserve(size_reserve);
        that_.push(method::tag::send::name());
        push(header::destination(dest));
    }

    void push(header::fixed hdr)
    {
        that_.push(hdr);
    }

    template<class B>
    void write(B& output)
    {
        that_.write(output);
    }

    std::string str() const
    {
        return that_.str();
    }

};


namespace incoming {

class frame
{
    method::type_id::type method_{method::type_id::none};
    std::string_view content_type_{};
    std::vector<header::incoming> header_{};
public:
    frame() = default;

    void set(method::type_id::type method) noexcept
    {
        method_ = method;
    }

    void set(header::content_type conent_type)
    {
        content_type_ = conent_type.value();
    }

    void push(header::incoming value)
    {
        header_.push_back(std::move(value));
    }

    method::type_id::type method() noexcept
    {
        return method_;
    }
};

class method_hook
{
public:
    method_hook() = default;
    virtual ~method_hook() = default;

    virtual void on_method(std::string_view)
    {   }
};

template<class T>
class method_fn final
    : protected method_hook
{
public:
    typedef method_fn<T> this_type;
    typedef void (T::*on_method_fn)(std::string_view);

private:
    T& self_;
    on_method_fn fn_;

    virtual void on_method(std::string_view method) override
    {
        (self_.*fn_)(method);
    }

public:
    method_fn(T& self, on_method_fn fn) noexcept
        : self_(self)
        , fn_(fn)
    {
        assert(fn);
    }
};

class header_hook
{
public:
    header_hook() = default;
    virtual ~header_hook() = default;

    virtual void select(std::string_view) = 0;
    virtual void apply(std::string_view) = 0;
};

template<class T>
class header_fn final
    : protected header_hook
{
public:
    typedef header_fn<T> this_type;
    typedef void (T::*on_method_fn)(std::string_view);

    typedef std::function<void(std::string_view)> fun_type;

    typedef std::unordered_map<std::size_t, fun_type> storage_type;

    typedef storage_type::iterator iterator;
    storage_type header_fun_{};
    iterator cursor_{header_fun_.end()};

public:
    header_fn();

    // выбрать ключ
    virtual void select(std::string_view key) override
    {
        std::hash<std::string_view> h;
        // находим хидер в мапе по ключу
        cursor_ = header_fun_.find(h(key));
    }

    virtual void apply(std::string_view value) override
    {
        // находим курсор
        auto end = header_fun_.end();
        if (cursor_ != end)
        {
            auto& fun = std::get<1>(*cursor_);
            // сбрасываем курсор
            cursor_ = end;
            // вызываем обработчик
            fun(std::move(value));
        }
    }

//    void push(std::string key, fun_type fun)
//    {
//        header_fun_.emplace(std::move(key), std::move(fun));
//    }
};

class header_function
{
    typedef std::function<void(std::string_view)> fun_type;
    typedef std::unordered_map<std::size_t, fun_type> storage_type;

    typedef storage_type::iterator iterator;
    storage_type header_fun_{};
    iterator cursor_{header_fun_.end()};

public:
    header_function() = default;

    // выбрать ключ
    void select(std::string_view key)
    {
        std::hash<std::string_view> h;
        // находим хидер в мапе по ключу
        cursor_ = header_fun_.find(h(key));
    }

    bool apply(std::string_view value)
    {
        // находим курсор
        auto end = header_fun_.end();
        if (cursor_ != end)
        {
            auto& fun = std::get<1>(*cursor_);
            // сбрасываем курсор
            cursor_ = end;
            // вызываем обработчик
            fun(std::move(value));
        }

        return false;
    }

//    void push(std::string key, fun_type fun)
//    {
//        header_fun_.emplace(std::move(key), std::move(fun));
//    }
};

template <class T>
class header_storage
{
public:
    typedef std::unordered_map<T, T> storage_type;
    typedef typename storage_type::iterator iterator;

private:
    storage_type custom_header_{};
    iterator cursor_{custom_header_.end()};

public:
    header_storage() = default;

    void select(std::string_view key)
    {
        // сбрасываем курсор хидера
        cursor_ = custom_header_.end();
        // находим хидер в мапе по ключу
        auto f = custom_header_.find(key);
        // по стандарту хидер добавляется только один раз
        if (f == cursor_)
        {
            // сохраняем курсор
            cursor_ = std::get<0>(
                custom_header_.emplace(std::move(key), std::string()));
        }
    }

    void apply(std::string_view value)
    {
        // находим курсор
        auto end = custom_header_.end();
        if (cursor_ != end)
        {
            auto& second = std::get<1>(*cursor_);
            // сбрасываем курсор
            cursor_ = end;
            // выставляем значение
            second.assign(value);
        }
    }

//    void push(std::string_view key, std::string_view value)
//    {
//        cursor_ = custom_header_.end();
//        auto f = custom_header_.find(key);
//        if (f == cursor_)
//            custom_header_.emplace(std::move(key), std::move(value));
//    }
};

class message
{
    header_function fun_{};
    //header_storage header_{};
};

} // namespace incoming

} // namespace v12
} // namespace stomptalk



template<class C, class T, class V>
constexpr std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    const stomptalk::v12::conntect_basic<V>& val)
{
    return os << val.str();
}

template<class C, class T, class V>
constexpr std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    const stomptalk::v12::send_basic<V>& val)
{
    return os << val.str();
}

template<class C, class T, class V>
constexpr std::basic_ostream<C, T>& operator<<(std::basic_ostream<C, T>& os,
    const stomptalk::v12::subscribe_basic<V>& val)
{
    return os << val.str();
}
