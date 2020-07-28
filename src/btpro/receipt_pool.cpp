#include "stomptalk/btpro/receipt_pool.hpp"

using namespace stomptalk::tcp;

void receipt_pool::exec(fn_type& fn) noexcept
{
    try
    {
        fn();
    }
    catch (...)
    {   }
}

void receipt_pool::create(const std::string& receipt_id, fn_type fn)
{
    storage_[receipt_id] = std::move(fn);
}

void receipt_pool::on_recepit(const std::string& receipt_id)
{
    auto f = storage_.find(receipt_id);
    if (f != storage_.end())
    {
        exec(std::get<1>(*f));
        storage_.erase(f);
    }
}


