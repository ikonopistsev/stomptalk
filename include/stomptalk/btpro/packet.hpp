#pragma once

#include "stomptalk/header_store.hpp"
#include "btpro/buffer.hpp"

namespace stomptalk {
namespace tcp {

class packet
{
protected:
    const header_store& header_;
    method::generic method_{};
    btpro::buffer data_{};

public:
    packet(packet&&) = default;

    packet(const header_store& header,
           method::generic method, btpro::buffer data)
        : header_(header)
        , method_(method)
        , data_(std::move(data))
    {   }

    virtual ~packet() = default;

    bool error() const noexcept
    {
        return method_.num_id() == method::num_id::error;
    }

    operator bool() const noexcept
    {
        return !error();
    }

    template<class T>
    std::string_view get(stomptalk::header::basic<T>) const noexcept
    {
        return header_.get(stomptalk::header::basic<T>());
    }

    std::string_view get(std::string_view key) const noexcept
    {
        return header_.get(key);
    }

    method::generic method() const noexcept
    {
        return method_;
    }

    btpro::buffer_ref data() const noexcept
    {
        return data_;
    }

    std::string dump() const noexcept
    {
        std::string rc;
        rc += method_.str();
        rc += '\n';
        rc += header_.dump();
        rc += '\n';
        if (!data_.empty())
            rc += data_.str();
        return rc;
    }
};

} // namespace tcp
} // namespace stomptalk
