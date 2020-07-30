#include "stomptalk/btpro/receipt_pool.hpp"

using namespace stomptalk::tcp;

void receipt_pool::exec(fn_type& fn, const header_type& hdr) noexcept
{
    try
    {
        fn(hdr);
    }
    catch (...)
    {   }
}

void receipt_pool::create(const std::string& receipt_id, fn_type fn)
{
    storage_[receipt_id] = std::move(fn);
}

void receipt_pool::on_recepit(const std::string& receipt_id, const header_type& hdr)
{
    auto f = storage_.find(receipt_id);
    if (f != storage_.end())
    {
        exec(std::get<1>(*f), hdr);
        storage_.erase(f);
    }
}


