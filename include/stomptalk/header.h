#ifndef stomptalk_header_h
#define stomptalk_header_h

#include <stddef.h>

enum stomptalk_header
{
    st_header_none = 0,
    st_header_content_length,
    st_header_content_type,
    st_header_accept_version,
    st_header_host,
    st_header_version,
    st_header_destination,
    st_header_id,
    st_header_transaction,
    st_header_message_id,
    st_header_subscription,
    st_header_receipt_id,
    st_header_login,
    st_header_passcode,
    st_header_heart_beat,
    st_header_session,
    st_header_server,
    st_header_ack,
    st_header_receipt,
    st_header_message,
    st_header_prefetch_count,
    st_header_durable,
    st_header_auto_delete,
    st_header_message_ttl,
    // https://www.rabbitmq.com/ttl.html#queue-ttl
    st_header_expires,
    st_header_max_length,
    st_header_max_length_bytes,
    st_header_dead_letter_exchange,
    st_header_dead_letter_routing_key,
    st_header_max_priority,
    st_header_persistent,
    st_header_reply_to,
    st_header_redelivered,
    st_header_original_exchange,
    st_header_original_routing_key,
    // https://www.rabbitmq.com/stomp.html#d.ugqn
    st_header_queue_name,
    // https://www.rabbitmq.com/stomp.html#queue-parameters
    st_header_queue_type,
    //https://www.rabbitmq.com/stomp.html#pear.ap
    st_header_content_encoding,
    st_header_priority,
    // Helps correlate requests with responses, see tutorial 6
    st_header_correlation_id,
    // https://www.rabbitmq.com/ttl.html
    st_header_expiration,
    // Arbitrary message ID
    st_header_amqp_message_id,
    // Application-provided timestamp
    st_header_timestamp,
    // Application-specific message type, e.g. "orders.created"
    st_header_amqp_type,
    st_header_user_id,
    st_header_app_id,
    st_header_cluster_id,
    st_header_delivery_mode,
    st_header_requeue,
    st_header_count,
    st_header_unknown = st_header_count,
    st_header_last_num_id = st_header_delivery_mode
};

#ifdef __cplusplus
extern "C" {
#endif

size_t stomptalk_eval_header(const char *text, size_t length);

#ifdef __cplusplus
}
#endif

#endif // stomptalk_header_h
