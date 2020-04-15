#pragma once

#include "stomptalk/crefwrap.hpp"
#include <cstdint>

namespace stomptalk {
namespace cmd {

struct mask
{
    enum type : std::uint64_t
    {
        ack  = 1,
    };
};

namespace tag {

class basic
{
public:
    typedef const char* value_type;
    typedef std::size_t size_type;

private:
    value_type  data_{""};
    size_type   size_{};

public:
    basic() = default;

    template<std::size_t N>
    constexpr basic(const crefwrap<const char[N]>& text_ref) noexcept
        : data_(text_ref.get())
        , size_(N - 1)
    {   }

    constexpr size_type size() const noexcept
    {
        return size_;
    }

    constexpr value_type data() const noexcept
    {
        return data_;
    }
};

struct ack {
    static constexpr auto id = mask::ack;
    static constexpr auto get() noexcept {
        return basic(cref("ACK"));
    }
};

} // namespace tag
} // namespace cmd
} // namespace stomptalk
