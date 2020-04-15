#pragma once

#include "frame_base.hpp"

#include <string>
#include <vector>
#include <functional>

#include <cassert>
#include <cstdint>

namespace stomptalk {
namespace v12 {

class heart_beat
{
    std::size_t cx_;
    std::size_t cy_;

public:
    heart_beat(std::size_t cx, std::size_t cy = 0);

    void apply(frame_base& frame) const;
};

class connect
    : public frame_base
{
public:
    explicit connect(const std::string& host, std::size_t size_reserve = 320);

    connect(const std::string& host, const std::string& login,
        std::size_t size_reserve = 320);

    connect(const std::string& host, const std::string& login,
        const std::string& passcode, std::size_t size_reserve = 320);

    template<class T>
    void push(const header::basic<T>& val)
    {
        val.apply(*this);
    }

    void push(const heart_beat& val)
    {
        val.apply(*this);
    }

    template<class T>
    void write(T& out)
    {
        frame_base::write(out);
    }
};

class send
    : public frame_base
{
public:
    explicit send(const std::string& dest, std::size_t size_reserve = 320);

    template<class T>
    void push(const header::basic<T>& val)
    {
        val.apply(*this);
    }

    void push(const heart_beat& val)
    {
        val.apply(*this);
    }

    template<class T>
    void write(T& out, const content& val)
    {
        frame_base::write(out, val);
    }
};

} // namespace v12
} // namespace stomptalk
