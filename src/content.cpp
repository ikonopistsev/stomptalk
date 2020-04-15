#include "stomptalk/content.hpp"
#include "stomptalk/header.hpp"
#include "stomptalk/frame_base.hpp"
#include "mkstr.hpp"

namespace stomptalk {

static const auto octet_stream(mkstr(std::cref("application/octet-stream")));

content::content(std::string buffer) noexcept
    : buffer_(std::move(buffer))
    , content_type_(header::content_type(octet_stream))
{   }

content::content(std::string buffer, header::base content_type) noexcept
    : buffer_(std::move(buffer))
    , content_type_(content_type)
{   }

void content::apply(frame_base& frame) const
{
    if (!content_type_.empty())
        frame.push(content_type_);

    auto text_size = std::to_string(buffer_.size());
    frame.push(header::content_length(text_size));
    frame.append(buffer_);
}

content content::text(std::string buffer)
{
    static const auto text_plain(mkstr(std::cref("text/plain")));
    return content(std::move(buffer), header::content_type(text_plain));
}

content content::json(std::string buffer)
{
    static const auto application_json(mkstr(std::cref("application/json")));
    return content(std::move(buffer), header::content_type(application_json));
}

content content::xml(std::string buffer)
{
    static const auto application_xml(mkstr(std::cref("application/xml")));
    return content(std::move(buffer), header::content_type(application_xml));
}

} // namespace sti
