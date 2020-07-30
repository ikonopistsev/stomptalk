#pragma once

#include "stomptalk/header_store.hpp"
#include "btpro/buffer.hpp"
#include <unordered_map>

namespace stomptalk {
namespace tcp {

class subs_pool
{
public:
    typedef rabbitmq::header_store header_type;
    typedef std::function<void(btpro::buffer, const header_type&)> fn_type;
    typedef std::unordered_map<std::string, fn_type> storage_type;
    typedef storage_type::iterator iterator;

private:
    std::unordered_map<std::string, fn_type> storage_{};

public:
    void create(const std::string& id, fn_type fn)
    {
        storage_[id] = std::move(fn);
    }

    void on_message(const std::string& id,
        btpro::buffer buf, const header_type& hdr)
    {
        auto f = storage_.find(id);
        if (f != storage_.end())
        {
            try
            {
                std::get<1>(*f)(std::move(buf), hdr);
            }
            catch (...)
            {   }
        }
    }

    void erase(iterator f)
    {
        storage_.erase(f);
    }
};

} // namespace tcp
} // namespace stomptalk
