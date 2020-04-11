#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stomptalk/config.h>

#ifdef __cplusplus
extern "C" {
#endif

struct stlparser;

enum stlp_method {
    stomp_method_CONNECT = 0,
    stomp_method_SUBSCRIBE,
    stomp_method_MESSAGE,
    stomp_method_CONNECTED,
    stomp_method_SEND,
    stomp_method_UNSUBSCRIBE,
    stomp_method_ACK,
    stomp_method_NACK,
    stomp_method_BEGIN,
    stomp_method_COMMIT,
    stomp_method_ABORT,
    stomp_method_DISCONNECT,
    stomp_method_RECEIPT,
    stomp_method_ERROR,
    stomp_method_UNKNOWN
};

enum stlparse_error {
    stlparse_error_none = 0,
    stlparse_error_too_big,
    stlparse_error_inval_method,
    stlparse_error_inval_reqline,
    stlparse_error_inval_ver,
    stlparse_error_inval_hdr,
    stlparse_error_inval_state,
    stlparse_error_user,
    stlparse_error_status,
    stlparse_error_generic
};

typedef struct stlparser        stlparser;
typedef struct stlparse_hooks   stlparse_hooks;
typedef enum stlp_method        stlp_method;
typedef enum stlparse_error     stlparse_error;

typedef int (* stlparse_hook)(stlparser *);
typedef int (* stlparse_data_hook)(stlparser *, const char *, size_t);


struct stlparse_hooks {
    stlparse_hook      on_msg_begin;
    stlparse_data_hook method;
    stlparse_hook      on_hdrs_begin;
    stlparse_data_hook hdr_key;
    stlparse_data_hook hdr_val;
    stlparse_hook      on_hdrs_complete;
    stlparse_data_hook body;
    stlparse_hook      on_msg_complete;
};


STOMPTALK_EXPORT size_t             stlparser_run(stlparser *,
                                    stlparse_hooks *, const char *, size_t);

STOMPTALK_EXPORT stlp_method        stlparser_get_method(stlparser *);
STOMPTALK_EXPORT const char*        stlparser_get_methodstr(stlparser *);
STOMPTALK_EXPORT const char*        stlparser_get_methodstr_m(stlp_method);
STOMPTALK_EXPORT uint64_t           stlparser_get_content_length(stlparser *);
STOMPTALK_EXPORT uint64_t           stlparser_get_bytes_read(stlparser *);
STOMPTALK_EXPORT uint64_t           stlparser_get_total_bytes_read(stlparser *);
STOMPTALK_EXPORT stlparse_error     stlparser_get_error(stlparser *);
STOMPTALK_EXPORT const char*        stlparser_get_strerror(stlparser *);
STOMPTALK_EXPORT void*              stlparser_get_userdata(stlparser *);
STOMPTALK_EXPORT void               stlparser_set_userdata(stlparser *, void *);
STOMPTALK_EXPORT uint64_t           stlparser_get_content_pending(stlparser * p);
STOMPTALK_EXPORT void               stlparser_init(stlparser *);
STOMPTALK_EXPORT stlparser*         stlparser_new(void);
STOMPTALK_EXPORT void               stlparser_free(stlparser*);

#ifdef __cplusplus
}
#endif
