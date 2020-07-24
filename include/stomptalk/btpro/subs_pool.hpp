#pragma once

#include "stomptalk/frame.hpp"
#include "btpro/tcp/bev.hpp"

#include <string>
#include <chrono>
#include <unordered_map>

namespace stomptalk {
namespace tcp {

class subs_pool
{
public:
    typedef std::function<void(btpro::buffer)> fn_type;

private:
    std::unordered_map<std::string, fn_type> storage_{};

    void exec(fn_type& fn, btpro::buffer buf) noexcept
    {
        try
        {
            fn(std::move(buf));
        }
        catch (...)
        {   }
    }

public:
    void create(const std::string& id, fn_type fn)
    {
        storage_[id] = std::move(fn);
    }

    void on_message(const std::string& id, btpro::buffer buf)
    {
        auto f = storage_.find(id);
        if (f != storage_.end())
            exec(std::get<1>(*f), std::move(buf));
    }

    void remove(const std::string& id)
    {
        storage_.erase(id);
    }
};

} // namespace tcp
} // namespace stomptalk
