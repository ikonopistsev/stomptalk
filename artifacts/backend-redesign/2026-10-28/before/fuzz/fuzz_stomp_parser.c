/*
 * OSS-Fuzz target: full-input parser
 *
 * Feeds the entire fuzzer-supplied buffer to stomptalk_parser_execute
 * in one call.  This exercises frame detection, method/header parsing,
 * body reading and error paths.
 *
 * Build with libFuzzer:
 *   cmake -DSTOMPTALK_BUILD_FUZZ=ON \
 *         -DCMAKE_C_COMPILER=clang \
 *         -DCMAKE_CXX_COMPILER=clang++ \
 *         -DCMAKE_C_FLAGS="-fsanitize=address,fuzzer-no-link" \
 *         -DCMAKE_CXX_FLAGS="-fsanitize=address,fuzzer-no-link" \
 *         ..
 */

#include "stomptalk/parser.h"

#include <stddef.h>
#include <stdint.h>

static int cb_frame(stomptalk_parser *p, const char *at)
    { (void)p; (void)at; return 0; }

static int cb_method(stomptalk_parser *p, uint64_t id, const char *at, size_t len)
    { (void)p; (void)id; (void)at; (void)len; return 0; }

static int cb_hdr_key(stomptalk_parser *p, uint64_t id, const char *at, size_t len)
    { (void)p; (void)id; (void)at; (void)len; return 0; }

static int cb_hdr_val(stomptalk_parser *p, const char *at, size_t len)
    { (void)p; (void)at; (void)len; return 0; }

static int cb_body(stomptalk_parser *p, const char *at, size_t len)
    { (void)p; (void)at; (void)len; return 0; }

static int cb_frame_end(stomptalk_parser *p, const char *at)
    { (void)p; (void)at; return 0; }

static const stomptalk_parser_hook hook = {
    .on_frame     = cb_frame,
    .on_method    = cb_method,
    .on_hdr_key   = cb_hdr_key,
    .on_hdr_val   = cb_hdr_val,
    .on_body      = cb_body,
    .on_frame_end = cb_frame_end
};

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    stomptalk_parser *parser = stomptalk_parser_new();
    if (!parser)
        return 0;

    stomptalk_set_hook(parser, &hook, NULL);
    stomptalk_parser_execute(parser, (const char *)data, size);

    stomptalk_parser_free(parser);
    return 0;
}
