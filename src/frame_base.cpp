#include "stomptalk/frame_base.hpp"
#include "stomptalk/strref.hpp"

namespace stomptalk {

void frame_base::push_ref(std::string_view text)
{
    buffer_.append_ref(text.data(), text.size())
        .append_ref(std::cref("\n"));
}

void frame_base::reserve(std::size_t size)
{
    buffer_.expand(size);
}

void frame_base::push(std::string_view text)
{
    buffer_.append(text)
        .append_ref(std::cref("\n"));
}

void frame_base::push(header::fixed header)
{
    buffer_.append(header.key())
        .append_ref(std::cref(":"))
        .append(header.value())
        .append_ref(std::cref("\n"));
}

} // namespace sti
