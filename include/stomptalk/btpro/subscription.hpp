#pragma once

#include "stomptalk/frame.hpp"
#include "btpro/tcp/bev.hpp"

#include <string>
#include <chrono>

namespace stomptalk {

class asked
{
protected:
    std::string id_{create_id()};

public:
    static inline std::string startup_time() noexcept
    {
        using namespace std::chrono;
        auto t = system_clock::now();
        auto c = duration_cast<milliseconds>(t.time_since_epoch()).count();
        return std::to_string(c);
    }

    static inline std::string create_id() noexcept
    {
        static const std::string tail("-sTK");
        static const auto time_const = startup_time();
        std::hash<std::string> hf;
        std::string rc;
        rc.reserve(40);
        rc += std::to_string(hf(std::to_string(std::rand()) + time_const));
        rc += '-';
        rc += time_const;
        rc += tail;
        return rc;
    }

    asked() = default;

    asked(std::string id) noexcept
        : id_(std::move(id))
    {   }

    const std::string& id() const noexcept
    {
        return id_;
    }

    //virtual void confirm() = 0;
};

namespace tcp {

template<class T>
class subs_fn
{
public:
    typedef void (T::*on_subs_fn)(int);
    typedef subs_fn<T> this_type;

private:
    T& self_;
    on_subs_fn fn_;

public:
    subs_fn(T& self, on_subs_fn fn) noexcept
        : self_(self)
        , fn_(fn)
    {   }
};

class subs
{
public:
    typedef std::function<void(int)> subs_fn;

private:
    subs_fn fn_;

public:
    subs(subs_fn fn)
        : fn_(fn)
    {   }
};

} // namespace btpro
} // namespace stomptalk

