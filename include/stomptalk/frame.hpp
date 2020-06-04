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

    template<std::size_t N>
    void push(strref<N> val)
    {
        append_ref(val);
        append_ref(make_ref("\n"));
    }

    // выставить хидер
    void push(header::fixed hdr)
    {
        append(hdr.key());
        append_ref(make_ref(":"));
        append(hdr.value());
        append_ref(make_ref("\n"));
    }
};

} // namespace frame
} // namespace stomptalk
