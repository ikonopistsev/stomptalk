#ifndef stomptalk_method_h
#define stomptalk_method_h

#include "stomptalk/type.h"

enum stomptalk_method {
    st_method_unknown = 0,
    st_method_abort,
    st_method_ack,
    st_method_begin,
    st_method_commit,
    st_method_connect,
    st_method_connected,
    st_method_disconnect,
    st_method_error,
    st_method_message,
    st_method_nack,
    st_method_receipt,
    st_method_send,
    st_method_stomp,
    st_method_subscribe,
    st_method_unsubscribe
};

#endif // stomptalk_method_h
