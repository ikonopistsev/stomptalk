#pragma once

#include "stomptalk/v12.hpp"
#include "stomptalk/user_hook.hpp"
#include "stomptalk/btpro/frame.hpp"

namespace stomptalk {
namespace v12 {

typedef conntect_basic<tcp::frame> connect;
typedef send_basic<tcp::frame> send;
typedef subscribe_basic<tcp::frame> subscribe;

//class layout final
//    : public hook_base
//{
//    virtual
//    void on_frame(parser_hook&) noexcept override
//    {

//    }

//    virtual
//    void on_method(parser_hook&, std::string_view method) noexcept override
//    {

//    }

//    virtual
//    void on_hdr_key(parser_hook&, std::string_view key) noexcept override
//    {

//    }

//    virtual
//    void on_hdr_val(parser_hook&, std::string_view value) noexcept override
//    {

//    }

//    virtual void on_body(parser_hook&,
//        const void* ptr, std::size_t size) noexcept override
//    {

//    }

//    virtual void on_frame_end(parser_hook&) noexcept override
//    {

//    }

//public:
//    layout() = default;

//    void subscibe(const v12::subscribe& frame,
//        std::function<void(int)> fn)
//    {

//    }

//    void error(std::function<void(int)> fn)
//    {

//    }
//};

//class subscription
//{
//    std::size_t id_;
//    std::function<void(int)> fn_;


//};

} // namespace v12
} // namespace stomptalk
