#include "stomptalk/frame_base.hpp"
#include "mkstr.hpp"

namespace stomptalk {

void frame_base::reserve(std::size_t size)
{
    buffer_.reserve(size);
}

void frame_base::print(const std::string& text)
{
    buffer_.append(text);
    br();
}

void frame_base::push(const header::base& header)
{
    header.print(buffer_);
    br();
}

void frame_base::br()
{
    static const auto br = mkstr(std::cref("\r\n"));
    buffer_.append(br);
}

void frame_base::append(const std::string& conent)
{
    br();
    buffer_.append(conent);
}

std::size_t frame_base::size() const noexcept
{
    return buffer_.size();
}

} // namespace sti
