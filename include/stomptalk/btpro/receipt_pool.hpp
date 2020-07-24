#pragma once

#include "stomptalk/frame.hpp"
#include "btpro/tcp/bev.hpp"

#include <string>
#include <chrono>
#include <unordered_map>

namespace stomptalk {
namespace tcp {

class receipt_pool
{
public:
    typedef std::function<void()> fn_type;
    typedef std::unordered_map<std::string, fn_type> storage_type;

    receipt_pool() = default;

private:
    storage_type storage_{};

    void exec(fn_type& fn) noexcept
    {
        try
        {
            fn();
        }
        catch (...)
        {   }
    }

public:
    void create(const std::string& receipt_id, fn_type fn)
    {
        storage_[receipt_id] = std::move(fn);
    }

    void on_recepit(const std::string& receipt_id)
    {
        auto f = storage_.find(receipt_id);
        if (f != storage_.end())
        {
            exec(std::get<1>(*f));
            storage_.erase(f);
        }
    }
};

} // namespace tcp
} // namespace stomptalk
