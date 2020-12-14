#ifndef stomptalk_parser_h
#define stomptalk_parser_h

#include "stomptalk/method.h"

#if defined(_WIN32) && !defined(__MINGW32__) && \
  (!defined(_MSC_VER) || _MSC_VER<1600) && !defined(__WINE__)
#include <BaseTsd.h>
typedef unsigned __int64 uint64_t;
#elif (defined(__sun) || defined(__sun__)) && defined(__SunOS_5_9)
#include <sys/inttypes.h>
#else
#include <stdint.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

typedef struct stomptalk_parser stomptalk_parser;
typedef struct stomptalk_parser_hook stomptalk_parser_hook;

typedef int (*stomptalk_data_cb) (stomptalk_parser*,
    const char *at, size_t length);
typedef int (*stomptalk_cb) (stomptalk_parser*, const char* at);

struct stomptalk_parser;

struct stomptalk_parser_hook {
    stomptalk_cb      on_frame;
    stomptalk_data_cb on_method;
    stomptalk_data_cb on_hdr_key;
    stomptalk_data_cb on_hdr_val;
    stomptalk_data_cb on_body;
    stomptalk_cb      on_frame_end;
};

stomptalk_parser* stomptalk_parser_new();

void stomptalk_parser_free(stomptalk_parser *parser);

// Executes the parser. Returns number of parsed bytes.
size_t stomptalk_parser_execute(stomptalk_parser *parser,
                                const char *data, size_t len);

void stomptalk_set_hook(stomptalk_parser *parser,
                        const stomptalk_parser_hook *hook, void *arg);

void *stomptalk_get_hook_arg(stomptalk_parser *parser);

// Returns a string version of the stomp method.
const char* stomptalk_method_str(size_t method);

uint64_t stomptalk_get_content_length(stomptalk_parser *parser);

size_t stomptalk_get_error(stomptalk_parser *parser);

#ifdef __cplusplus
}
#endif

#endif
