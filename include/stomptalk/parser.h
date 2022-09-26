#ifndef stomptalk_parser_h
#define stomptalk_parser_h

#include "stomptalk/method.h"
#include "stomptalk/header.h"
#include "stomptalk/antoull.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct stomptalk_parser stomptalk_parser;
typedef struct stomptalk_parser_hook stomptalk_parser_hook;

typedef int (*stomptalk_data_cb) (stomptalk_parser*,
    const char *at, size_t length);

typedef int (*stomptalk_id_cb) (stomptalk_parser*, uint64_t id,
    const char *at, size_t length);

// result != 0 -> error
typedef int (*stomptalk_cb) (stomptalk_parser*, const char* at);

struct stomptalk_parser;

enum stomptalk_error {
    stomptalk_error_none = 0,
    stomptalk_error_too_big,
    stomptalk_error_inval_reqline,
    stomptalk_error_inval_method,
    stomptalk_error_inval_frame,
    stomptalk_error_inval_content_size,
    stomptalk_error_next_frame,
    stomptalk_error_generic
};

struct stomptalk_parser_hook {
    stomptalk_cb        on_frame;
    stomptalk_id_cb     on_method;
    stomptalk_id_cb     on_hdr_key;
    stomptalk_data_cb   on_hdr_val;
    stomptalk_data_cb   on_body;
    stomptalk_cb        on_frame_end;
};

STOMPTALK_EXPORT
stomptalk_parser* stomptalk_parser_new();

STOMPTALK_EXPORT
void stomptalk_parser_free(stomptalk_parser *parser);

// Executes the parser. Returns number of parsed bytes.
STOMPTALK_EXPORT
size_t stomptalk_parser_execute(stomptalk_parser *parser,
                                const char *data, size_t len);

STOMPTALK_EXPORT
void stomptalk_set_hook(stomptalk_parser *parser,
                        const stomptalk_parser_hook *hook, void *arg);

STOMPTALK_EXPORT
void *stomptalk_get_hook_arg(stomptalk_parser *parser);

// Returns a string version of the stomp method.
STOMPTALK_EXPORT
const char* stomptalk_method_str(uint64_t method);

STOMPTALK_EXPORT
uint64_t stomptalk_get_content_length(stomptalk_parser *parser);

STOMPTALK_EXPORT
size_t stomptalk_get_error(stomptalk_parser *parser);

STOMPTALK_EXPORT
const char* stomptalk_get_error_str(size_t error);

STOMPTALK_EXPORT
const char* stomptalk_version();

#ifdef __cplusplus
}
#endif

#endif
