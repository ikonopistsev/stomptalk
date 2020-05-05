#pragma once

#include "stomptalk/tag.hpp"
#include <string_view>
#include <cassert>
#include <cstdint>

namespace stomptalk {

class parser_hook;

class hook_base
{
public:
    hook_base() = default;

    virtual ~hook_base() = default;

    virtual void on_frame(parser_hook&) noexcept = 0;

    virtual void on_method(parser_hook&, std::string_view) noexcept = 0;

    virtual void on_hdr_key(parser_hook&, std::string_view) noexcept = 0;

    virtual void on_hdr_val(parser_hook&, std::string_view) noexcept = 0;

    virtual void on_body(parser_hook&, const void*, std::size_t) noexcept = 0;

    virtual void on_frame_end(parser_hook&) noexcept = 0;
};

template<class T>
class hook_fn final
    : public  hook_base
{
public:
    typedef void (T::*frame_fn)(parser_hook&) noexcept;
    typedef void (T::*header_fn)(parser_hook&, std::string_view) noexcept;
    typedef void (T::*body_fn)(parser_hook&, const void*, std::size_t) noexcept;

private:
    T& that_;
    frame_fn frame_{nullptr};
    header_fn method_{nullptr};
    header_fn hdr_key_{nullptr};
    header_fn hdr_val_{nullptr};
    body_fn body_{nullptr};
    frame_fn frame_end_{nullptr};

    virtual void on_frame(parser_hook& hook) noexcept override
    {
        (that_.*frame_)(hook);
    }

    virtual void on_method(parser_hook& hook,
        std::string_view method) noexcept override
    {
        (that_.*frame_)(hook, std::move(method));
    }

    virtual void on_hdr_key(parser_hook& hook,
        std::string_view key) noexcept override
    {
        (that_.*frame_)(hook, std::move(key));
    }

    virtual void on_hdr_val(parser_hook& hook,
        std::string_view val) noexcept override
    {
        (that_.*frame_)(hook, std::move(val));
    }

    virtual void on_body(parser_hook& hook,
        const void* ptr, std::size_t size) noexcept override
    {
        (that_.*frame_)(hook, ptr, size);
    }

    virtual void on_frame_end(parser_hook& hook) noexcept override
    {
        (that_.*frame_)(hook);
    }

public:
    hook_fn(T& that,
            frame_fn frame,
            header_fn method,
            header_fn hdr_key,
            header_fn hdr_val,
            body_fn body,
            frame_fn frame_end) noexcept
        : that_(that)
        , frame_(frame)
        , method_(method)
        , hdr_key_(hdr_key)
        , hdr_val_(hdr_val)
        , body_(body)
        , frame_end_(frame_end)
    {   }

    void set_frame(frame_fn fn)
    {
        assert(fn);
        frame_ = fn;
    }

    void set_method(header_fn fn) noexcept
    {
        assert(fn);
        method_ = fn;
    }

    void set_hdr_key(header_fn fn) noexcept
    {
        assert(fn);
        hdr_key_ = fn;
    }

    void set_hdr_val(header_fn fn) noexcept
    {
        assert(fn);
        hdr_val_ = fn;
    }

    void set_body(body_fn fn) noexcept
    {
        assert(fn);
        body_ = fn;
    }

    void set_frame_end(frame_fn fn) noexcept
    {
        assert(fn);
        frame_end_ = fn;
    }
};

} // namespace stomptalk
