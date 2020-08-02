#include "stomptalk/btpro/handler.hpp"

using namespace stomptalk::tcp;

void handler::exec(iterator i, packet p) noexcept
{
    try
    {
        std::get<1>(*i)(std::move(p));
    }
    catch (...)
    {   }
}

void handler::create(const std::string& receipt_id, fn_type fn)
{
    storage_[receipt_id] = std::move(fn);
}

void handler::on_recepit(const std::string& receipt_id, packet p) noexcept
{
    auto f = storage_.find(receipt_id);
    if (f != storage_.end())
    {
        exec(f, std::move(p));
        storage_.erase(f);
    }
}

void handler::on_message(const std::string &id, packet p) noexcept
{
    auto f = storage_.find(id);
    if (f != storage_.end())
        exec(f, std::move(p));
}


