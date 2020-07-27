#pragma once

#include "stomptalk/rabbitmq.hpp"

#include <map>
#include <array>
#include <string>
#include <string_view>

namespace stomptalk {
namespace tcp {

template<std::size_t N>
class headerlay
{
    std::size_t cursor_{};
    std::array<std::string, N> pool_{};
    std::map<std::string, std::string> etc_{};
/*
    content_length = 0,
    content_type,
    accept_version,
    host,
    version,
    destination,
    id,
    transaction,
    message_id,
    subscription,
    receipt_id,
    login,
    passcode,
    heart_beat,
    session,
    server,
    ack,
    receipt,
    message,
    last_type_id = message
    prefetch_count              = header::num_id::last_type_id + 1,
    durable                     = prefetch_count + 1,
    auto_delete                 = prefetch_count + 2,
    message_ttl                 = prefetch_count + 3,
    expires                     = prefetch_count + 4,
    max_length                  = prefetch_count + 5,
    max_length_bytes            = prefetch_count + 6,
    dead_letter_exchange        = prefetch_count + 7,
    dead_letter_routing_key     = prefetch_count + 8,
    max_priority                = prefetch_count + 9,
    persistent                  = prefetch_count + 10,
    reply_to                    = prefetch_count + 11,
    session                     = prefetch_count + 12,
    redelivered                 = prefetch_count + 13,
*/
    void select(std::string_view hdr)
    {
        using header::size_of;
        using namespace header::tag;

        header::mask_id::type rc;
        switch (hdr.size())
        {
            case (size_of(accept_version())):
                if (detect(rc, hdr, accept_version()))
                {
                    if (rc == header::mask_id::content_length)
                        heval_ = heval::content_length;
                }
            break;
            case (size_of(content_type())):
                if (detect(rc, hdr, content_type()))
                {
                    if (rc == header::mask_id::content_type)
                        heval_ = heval::content_type;
                }
            break;
            default:
                heval_ = heval::none;
        }
    }
};

} // namespace tcp
} // namespace stomptalk
