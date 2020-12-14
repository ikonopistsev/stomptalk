#ifndef stomptalk_method_h
#define stomptalk_method_h

#include <stddef.h>

enum stomptalk_method
{
    st_method_none = 0,
    st_method_ack,
    st_method_nack,
    st_method_send,
    st_method_abort,
    st_method_begin,
    st_method_error,
    st_method_stomp,
    st_method_commit,
    st_method_connect,
    st_method_message,
    st_method_receipt,
    st_method_subscribe,
    st_method_connected,
    st_method_disconnect,
    st_method_unsubscribe,
    st_method_unknown
};

#ifdef __cplusplus
extern "C" {
#endif

size_t stomptalk_eval_method(const char *text, size_t length);

#ifdef __cplusplus
}
#endif

#endif // stomptalk_method_h
