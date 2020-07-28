#include "stomptalk/rabbitmq.hpp"
#include <array>

namespace stomptalk {
namespace rabbitmq {

class header_arr
{
    std::array<std::string, num_id::last_mask_id + 1> header_val_{};

public:
    void set(const rabbitmq_header& hdr, const std::string& val) noexcept
    {
        header_val_[hdr] = val;
    }

    template<class T>
    const std::string& get(header::basic<T>) const noexcept
    {
        return header_val_[T::num_id];
    }

    void clear() noexcept
    {
        for (auto& h : header_val_)
            h.clear();
    }
};

} // namespace rabbitmq
} // namespace stomptalk
