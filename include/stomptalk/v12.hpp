#pragma once

#include "stomptalk/frame.hpp"

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

} // namespace v12
} // namespace stomptalk
