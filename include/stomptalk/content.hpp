#pragma once

#include "stomptalk/header_base.hpp"
#include "stomptalk/frame_base_fwd.hpp"
#include <string>

namespace stomptalk {

class content
{
    std::string buffer_{};
    header::base content_type_{};

public:
    explicit content(std::string buffer) noexcept;

    content(std::string buffer, header::base content_type) noexcept;

    void apply(frame_base& frame) const;

    static content text(std::string buffer);

    static content json(std::string buffer);

    static content xml(std::string buffer);
};

} // namespace stomptalk
