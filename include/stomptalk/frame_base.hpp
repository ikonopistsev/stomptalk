#pragma once

#include "stomptalk/header.hpp"

#include "btpro/buffer.hpp"

namespace stomptalk {

class frame_base
{
    btpro::buffer buffer_{};

protected:
    void push_ref(std::string_view text);

    void reserve(std::size_t size);

    void push(std::string_view text);

public:

    frame_base() = default;

    // выставить хидер
    void push(header::fixed header);

    std::string str() const
    {
        return buffer_.str();
    }

    template<class B>
    void write(B& output)
    {
        buffer_.append(std::cref("\n\0"));
        output.write(std::move(buffer_));
    }
};

} // namespace stomptalk
