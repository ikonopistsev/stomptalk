#ifndef __STOMPTALK_PARSER_H__
#define __STOMPTALK_PARSER_H__

#include <stddef.h>
#include <stdint.h>
#include <stomptalk/config.h>

#ifdef __cplusplus
extern "C" {
#endif

struct stlparser;

enum stlp_type {
    stlp_type_request = 0,
    stlp_type_response,
    stomp_type,
};

enum stlp_scheme {
    stlp_scheme_none = 0,
    stlp_scheme_ftp,
    stlp_scheme_http,
    stlp_scheme_https,
    stlp_scheme_nfs,
    stlp_scheme_unknown
};

enum stlp_method {
    htp_method_GET = 0,
    htp_method_HEAD,
    htp_method_POST,
    htp_method_PUT,
    htp_method_DELETE,
    htp_method_MKCOL,
    htp_method_COPY,
    htp_method_MOVE,
    htp_method_OPTIONS,
    htp_method_PROPFIND,
    htp_method_PROPPATCH,
    htp_method_LOCK,
    htp_method_UNLOCK,
    htp_method_TRACE,
    htp_method_CONNECT, /* RFC 2616 */
    htp_method_PATCH,   /* RFC 5789 */

    stomp_method_CONNECT,
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

    stomp_method_UNKNOWN,
    htp_method_UNKNOWN = stomp_method_UNKNOWN,

};

enum stlparse_error {
    stlparse_error_none = 0,
    stlparse_error_too_big,
    stlparse_error_inval_method,
    stlparse_error_inval_reqline,
    stlparse_error_inval_schema,
    stlparse_error_inval_proto,
    stlparse_error_inval_ver,
    stlparse_error_inval_hdr,
    stlparse_error_inval_chunk_sz,
    stlparse_error_inval_chunk,
    stlparse_error_inval_state,
    stlparse_error_user,
    stlparse_error_status,
    stlparse_error_generic
};

typedef struct stlparser        stlparser;
typedef struct stlparse_hooks   stlparse_hooks;

typedef enum stlp_scheme     stlp_scheme;
typedef enum stlp_method     stlp_method;
typedef enum stlp_type       stlp_type;
typedef enum stlparse_error  stlparse_error;

typedef int (* stlparse_hook)(stlparser *);
typedef int (* stlparse_data_hook)(stlparser *, const char *, size_t);


struct stlparse_hooks {
    stlparse_hook      on_msg_begin;
    stlparse_data_hook method;
    stlparse_data_hook scheme;              /* called if scheme is found */
    stlparse_data_hook host;                /* called if a host was in the request scheme */
    stlparse_data_hook port;                /* called if a port was in the request scheme */
    stlparse_data_hook path;                /* only the path of the uri */
    stlparse_data_hook args;                /* only the arguments of the uri */
    stlparse_data_hook uri;                 /* the entire uri including path/args */
    stlparse_hook      on_hdrs_begin;
    stlparse_data_hook hdr_key;
    stlparse_data_hook hdr_val;
    stlparse_data_hook hostname;
    stlparse_hook      on_hdrs_complete;
    stlparse_hook      on_new_chunk;        /* called after parsed chunk octet */
    stlparse_hook      on_chunk_complete;   /* called after single parsed chunk */
    stlparse_hook      on_chunks_complete;  /* called after all parsed chunks processed */
    stlparse_data_hook body;
    stlparse_hook      on_msg_complete;
};


STOMPTALK_EXPORT size_t             stlparser_run(stlparser *,
                                        stlparse_hooks *, const char *, size_t);

STOMPTALK_EXPORT int                stlparser_should_keep_alive(stlparser * p);
STOMPTALK_EXPORT stlp_scheme        stlparser_get_scheme(stlparser *);
STOMPTALK_EXPORT stlp_method        stlparser_get_method(stlparser *);
STOMPTALK_EXPORT const char*        stlparser_get_methodstr(stlparser *);
STOMPTALK_EXPORT const char*        stlparser_get_methodstr_m(stlp_method);
STOMPTALK_EXPORT void               stlparser_set_major(stlparser *, unsigned char);
STOMPTALK_EXPORT void               stlparser_set_minor(stlparser *, unsigned char);
STOMPTALK_EXPORT unsigned char      stlparser_get_major(stlparser *);
STOMPTALK_EXPORT unsigned char      stlparser_get_minor(stlparser *);
STOMPTALK_EXPORT unsigned char      stlparser_get_multipart(stlparser *);
STOMPTALK_EXPORT unsigned int       stlparser_get_status(stlparser *);
STOMPTALK_EXPORT uint64_t           stlparser_get_content_length(stlparser *);
STOMPTALK_EXPORT uint64_t           stlparser_get_content_pending(stlparser *);
STOMPTALK_EXPORT uint64_t           stlparser_get_total_bytes_read(stlparser *);
STOMPTALK_EXPORT stlparse_error     stlparser_get_error(stlparser *);
STOMPTALK_EXPORT const char*        stlparser_get_strerror(stlparser *);
STOMPTALK_EXPORT void*              stlparser_get_userdata(stlparser *);
STOMPTALK_EXPORT void               stlparser_set_userdata(stlparser *, void *);
STOMPTALK_EXPORT void               stlparser_init(stlparser *, stlp_type);
STOMPTALK_EXPORT stlparser*         stlparser_new(void);
STOMPTALK_EXPORT void               stlparser_free(stlparser*);

#ifdef __cplusplus
}
#endif

#endif

