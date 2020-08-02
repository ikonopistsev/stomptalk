#pragma once

#include "stomptalk/parser.hpp"
#include "stomptalk/hook_base.hpp"
#include "stomptalk/btpro/frame.hpp"
#include "stomptalk/btpro/handler.hpp"
#include "stomptalk/header_store.hpp"

#include <array>

namespace stomptalk {
namespace tcp {

class stomplay final
    : public stomptalk::hook_base
{
public:
    typedef header::tag::content_type::content_type_id content_type_id;
    typedef std::function<void(packet)> fun_type;

private:
    stomptalk::parser stomp_{};
    stomptalk::parser_hook hook_{*this};
    stomptalk::header_store header_store_{};

    method::generic method_{};
    header::generic header_{};
    std::string current_header_{};
    content_type_id::type content_type_{content_type_id::none};

    btpro::buffer recv_{};
    fun_type on_logon_fn_{};
    handler handler_{};
    bool logon_{false};

    virtual void on_frame(parser_hook&) noexcept override;

    virtual void on_method(parser_hook& hook,
        std::string_view method) noexcept override;

    virtual void on_hdr_key(parser_hook& hook,
        std::string_view text) noexcept override;

    virtual void on_hdr_val(parser_hook& hook,
        std::string_view val) noexcept override;

    virtual void on_body(parser_hook& hook,
        const void* data, std::size_t size) noexcept override;

    virtual void on_frame_end(parser_hook&) noexcept override;

    void exec_on_error() noexcept;
    void exec_on_logon() noexcept;

    void exec_on_receipt(std::string_view id) noexcept;
    void exec_on_message(std::string_view id) noexcept;

public:
    stomplay() = default;

    std::size_t parse(const char* ptr, std::size_t size)
    {
        return stomp_.run(hook_, ptr, size);
    }

    void on_logon(fun_type fn)
    {
        on_logon_fn_ = std::move(fn);
    }

    void logout() noexcept
    {
        logon_ = false;
    }

    void add_handler(const std::string& id, fun_type fn);
};

} // namespace tcp
} // namespace stomptalk

