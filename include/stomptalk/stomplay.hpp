#pragma once

#include "stomptalk/parser.hpp"
#include "stomptalk/stomplay_hook.hpp"

namespace stomptalk {

class stomplay final
    : public hook_base
{
private:
    stomplay_hook& hook_;

    parser stomp_{};
    parser_hook parser_{*this};
    header_store header_store_{};

    using key_type = header_store::key_type;
    key_type current_header_{};

    method::generic method_{};
    header::generic header_{};
    std::size_t content_length_{};

    void on_frame(parser_hook&, const char* frame_start) noexcept override;

    void on_method(parser_hook& hook,
        std::string_view method) noexcept override;

    void on_hdr_key(parser_hook& hook,
        std::string_view text) noexcept override;

    void on_hdr_val(parser_hook& hook,
        std::string_view val) noexcept override;

    void on_body(parser_hook& hook,
        const void* data, std::size_t size) noexcept override;

    void on_frame_end(parser_hook&, const char* frame_end) noexcept override;

    using verifiy_mask_type = std::size_t;
    struct verify
    {
        enum type
            : verifiy_mask_type
        {
            none = 0,
            send = 1 << 1,
            message = 1 << 2
        };
    };

    verifiy_mask_type verify_{ verify::none };

public:
    stomplay(stomplay_hook& hook) noexcept;

    std::size_t parse(const char* ptr, std::size_t size) noexcept
    {
        return stomp_.run(parser_, ptr, size);
    }

    std::string_view error_str() const noexcept
    {
        return parser_.error_str();
    }

private:

    void clear();
};

} // namespace stompconn

