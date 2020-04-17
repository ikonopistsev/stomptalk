#pragma once

#include "stomptalk/method.hpp"

#include <cassert>
#include <cstdint>

namespace stomptalk {

class parser_hook;

typedef void (*hook_frame_fn_type)(parser_hook&, void *user);
typedef void (*hook_fn_type)(parser_hook&, const strref& text, void *user);

class user_hook
{
    void *user_{nullptr};
    hook_frame_fn_type hook_begin_{nullptr};
    hook_fn_type method_{nullptr};
    hook_fn_type hdr_key_{nullptr};
    hook_fn_type hdr_val_{nullptr};
    hook_fn_type body_{nullptr};
    hook_frame_fn_type hook_end_{nullptr};

public:
    user_hook() = default;

    user_hook(void *user, hook_frame_fn_type hook_begin,
              hook_fn_type method, hook_fn_type hdr_key,
              hook_fn_type hdr_val, hook_fn_type body,
              hook_frame_fn_type hook_end) noexcept
        : user_(user)
        , hook_begin_(hook_begin)
        , method_(method)
        , hdr_key_(hdr_key)
        , hdr_val_(hdr_val)
        , body_(body)
        , hook_end_(hook_end)
    {   }

    void on_hook_begin(parser_hook& hook) noexcept
    {
        hook_begin_(hook, user_);
    }

    void on_method(parser_hook& hook, const strref& text) noexcept
    {
        method_(hook, text, user_);
    }

    void on_hdr_key(parser_hook& hook, const strref& text) noexcept
    {
        hdr_key_(hook, text, user_);
    }

    void on_hdr_val(parser_hook& hook, const strref& text) noexcept
    {
        hdr_val_(hook, text, user_);
    }

    void on_body(parser_hook& hook, const strref& text) noexcept
    {
        body_(hook, text, user_);
    }

    void on_hook_end(parser_hook& hook) noexcept
    {
        hook_end_(hook, user_);
    }

    void apply(parser_hook& hook) const noexcept;
};

template<class T>
class hookfn
{
public:
    typedef void (T::*hook_frame_fn_type)(parser_hook& hook);
    typedef void (T::*hookfn_type)(parser_hook& hook, const strref& text);
    typedef hookfn<T> this_type;

private:
    template<class A>
    struct proxy
    {
        static inline void do_frame(parser_hook& hook, void *self) noexcept
        {
            assert(self);
            static_cast<A*>(self)->do_frame(hook);
        }

        static inline void on_method(parser_hook& hook,
            const strref& text, void *self) noexcept
        {
            assert(self);
            static_cast<A*>(self)->do_method(hook, text);
        }

        static inline void do_hdr_key(parser_hook& hook,
            const strref& text, void *self) noexcept
        {
            assert(self);
            static_cast<A*>(self)->do_hdr_key(hook, text);
        }

        static inline void do_hdr_val(parser_hook& hook,
            const strref& text, void *self) noexcept
        {
            assert(self);
            static_cast<A*>(self)->do_hdr_val(hook, text);
        }

        static inline void do_body(parser_hook& hook,
            const strref& text, void *self) noexcept
        {
            assert(self);
            static_cast<A*>(self)->do_body(hook, text);
        }

        static inline void do_frame_end(parser_hook& hook, void *self) noexcept
        {
            assert(self);
            static_cast<A*>(self)->do_frame_end(hook);
        }
    };

    T& that_;
    hook_frame_fn_type frame_{nullptr};
    hookfn_type method_{nullptr};
    hookfn_type hdr_key_{nullptr};
    hookfn_type hdr_val_{nullptr};
    hookfn_type body_{nullptr};
    hook_frame_fn_type frame_end_{nullptr};

    user_hook hook_ {
        this,
        &proxy<this_type>::do_frame,
        &proxy<this_type>::on_method, &proxy<this_type>::do_hdr_key,
        &proxy<this_type>::do_hdr_val, &proxy<this_type>::do_body,
        &proxy<this_type>::do_frame_end
    };

    void do_frame(parser_hook& hook) noexcept
    {
        (that_.*frame_)(hook);
    }

    void do_method(parser_hook& hook, const strref& text) noexcept
    {
        (that_.*method_)(hook, text);
    }

    void do_hdr_key(parser_hook& hook, const strref& text) noexcept
    {
        (that_.*hdr_key_)(hook, text);
    }

    void do_hdr_val(parser_hook& hook, const strref& text) noexcept
    {
        (that_.*hdr_val_)(hook, text);
    }

    void do_body(parser_hook& hook, const strref& text) noexcept
    {
        (that_.*body_)(hook, text);
    }

    void do_frame_end(parser_hook& hook) noexcept
    {
        (that_.*frame_end_)(hook);
    }

public:
    hookfn(T& that, hook_frame_fn_type frame,
           hookfn_type method, hookfn_type hdr_key,
           hookfn_type hdr_val, hookfn_type body,
           hook_frame_fn_type frame_end) noexcept
        : that_(that)
        , frame_(frame)
        , method_(method)
        , hdr_key_(hdr_key)
        , hdr_val_(hdr_val)
        , body_(body)
        , frame_end_(frame_end)
    {   }

    void set_frame(hook_frame_fn_type fn)
    {
        assert(fn);
        frame_ = fn;
    }

    void set_method(hookfn_type fn) noexcept
    {
        assert(fn);
        method_ = fn;
    }

    void set_hdr_key(hookfn_type fn) noexcept
    {
        assert(fn);
        hdr_key_ = fn;
    }

    void set_hdr_val(hookfn_type fn) noexcept
    {
        assert(fn);
        hdr_val_ = fn;
    }

    void set_body(hookfn_type fn) noexcept
    {
        assert(fn);
        body_ = fn;
    }

    void set_frame_end(hook_frame_fn_type fn) noexcept
    {
        assert(fn);
        frame_end_ = fn;
    }

    void apply(parser_hook& hook)  const noexcept
    {
        hook_.apply(hook);
    }
};

} // namespace stomptalk
