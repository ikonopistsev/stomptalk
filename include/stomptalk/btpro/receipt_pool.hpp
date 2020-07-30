#pragma once

#include "stomptalk/header_store.hpp"
#include <functional>

namespace stomptalk {
namespace tcp {

class receipt_pool
{
public:
    typedef rabbitmq::header_store header_type;
    typedef std::function<void(const header_type&)> fn_type;
    typedef std::unordered_map<std::string, fn_type> storage_type;

    receipt_pool() = default;

private:
    storage_type storage_{};

    void exec(fn_type& fn, const header_type& hdr) noexcept;

public:
    void create(const std::string& receipt_id, fn_type fn);

    void on_recepit(const std::string& receipt_id, const header_type& hdr);
};

} // namespace tcp
} // namespace stomptalk
