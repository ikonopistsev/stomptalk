#pragma once

#include "stomptalk/header.hpp"
#include "stomptalk/content.hpp"
#include "stomptalk/frame_base_fwd.hpp"
#include <iostream>

namespace stomptalk {

class frame_base
{
    std::string buffer_{};

protected:
    void reserve(std::size_t size);

    void print(const std::string& text);

    void br();

public:

    frame_base() = default;

    // выставить хидер
    void push(const header::base& header);

    // дописать контент
    void append(const std::string& conent);

    template<class T>
    void write(T& out)
    {
        br();
        out << buffer_;
    }

    template<class T>
    void write(T& out, const content& val)
    {
        val.apply(*this);
        out << buffer_;
    }

    std::size_t size() const noexcept;
};

} // namespace stomptalk
