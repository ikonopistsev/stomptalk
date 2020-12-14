#ifndef stomptalk_method_h
#define stomptalk_method_h

#include <stddef.h>

enum stomptalk_method
{
    stomtalk_none = 0,
    stomtalk_ack,
    stomtalk_nack,
    stomtalk_send,
    stomtalk_abort,
    stomtalk_begin,
    stomtalk_error,
    stomtalk_stomp,
    stomtalk_commit,
    stomtalk_connect,
    stomtalk_message,
    stomtalk_receipt,
    stomtalk_subscribe,
    stomtalk_connected,
    stomtalk_disconnect,
    stomtalk_unsubscribe,
    stomtalk_unknown
};

#ifdef __cplusplus
extern "C" {
#endif

size_t stomptalk_eval_method(const char *text, size_t length);

#ifdef __cplusplus
}
#endif

#endif // stomptalk_method_h
