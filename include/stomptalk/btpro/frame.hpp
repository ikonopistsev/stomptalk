#pragma once

#include "stomptalk/frame.hpp"
#include "btpro/tcp/bev.hpp"

namespace stomptalk {
namespace tcp {

class frame final
    : public stomptalk::frame::base
{
    be::buffer buf_;

    virtual void append(std::string_view text) override
    {
        buf_.append(text.data(), text.size());
    }

    virtual void append_ref(std::string_view text) override
    {
        buf_.append_ref(text.data(), text.size());
    }

public:
    frame() = default;
    frame(frame&&) = default;

    virtual ~frame() override = default;

    virtual void reserve(std::size_t len) override
    {
        buf_.expand(len);
    }

    virtual void write(bt::bev& output)
    {
        append_ref(make_ref("\n\0"));
        output.write(std::move(buf_));
    }

    std::string str() const
    {
        return buf_.str();
    }
};

} // namespace btpro
} // namespace stomptalk

