#pragma once

#include "stomptalk/rabbitmq.hpp"

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

    void apply(frame::base& frame) const
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
public:
    typedef std::function<void()> fn_type;

private:
    T frame_{};
    fn_type fn_{};

public:
    subscribe_basic(const std::string& destination,
                    std::size_t size_reserve = 320)
    {
        frame_.reserve(size_reserve);
        frame_.push(method::tag::subscribe::name());
        push(header::destination(destination));
    }

    void push(header::fixed hdr)
    {
        frame_.push(hdr);
    }

    void set(fn_type fn)
    {
        fn_ = std::move(fn);
    }

    const fn_type& fn() const noexcept
    {
        return fn_;
    }

    template<class B>
    void write(B& output)
    {
        frame_.write(output);
    }

    std::string str() const
    {
        return frame_.str();
    }
};

template<class T>
class send_basic
{
    T frame_{};

public:
    explicit send_basic(const std::string& dest, std::size_t size_reserve = 320)
    {
        frame_.reserve(size_reserve);
        frame_.push(method::tag::send::name());
        push(header::destination(dest));
    }

    void push(header::fixed hdr)
    {
        frame_.push(hdr);
    }

    template<class B>
    void append_data(B buf)
    {
        frame_.append_data(std::move(buf));
    }

    template<class B>
    void write(B& output)
    {
        frame_.write(output);
    }

    std::string str() const
    {
        return frame_.str();
    }
};

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
