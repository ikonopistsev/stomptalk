#ifndef stomptalk_method_h
#define stomptalk_method_h

#include <stddef.h>

enum stomptalk_method
{
    stomptalk_none = 0,
    stomptalk_ack,
    stomptalk_nack,
    stomptalk_send,
    stomptalk_abort,
    stomptalk_begin,
    stomptalk_error,
    stomptalk_stomp,
    stomptalk_commit,
    stomptalk_connect,
    stomptalk_message,
    stomptalk_receipt,
    stomptalk_subscribe,
    stomptalk_connected,
    stomptalk_disconnect,
    stomptalk_unsubscribe,
    stomptalk_unknown
};

#ifdef __cplusplus
extern "C" {
#endif

size_t stomptalk_eval_method(const char *text, size_t length);

#ifdef __cplusplus
}
#endif

#endif // stomptalk_method_h
