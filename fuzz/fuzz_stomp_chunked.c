/*
 * OSS-Fuzz target: chunked-input parser
 *
 * The first byte of the fuzzer buffer encodes a chunk size (1..32).
 * The remainder is fed to the parser in those chunks.
 *
 * This stresses state-machine transitions that might only be visible
 * when a frame boundary falls in the middle of a chunk, e.g.
 *   - method split across two calls
 *   - header key/value split at the colon
 *   - content-length body split mid-body
 *   - null-terminated body split at the final \0
 *
 * Build: same flags as fuzz_stomp_parser.c (see that file's header).
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
    /* need at least 1 byte for the chunk-size prefix */
    if (size < 2)
        return 0;

    /* chunk size: 1..32 bytes per call */
    const size_t chunk = (size_t)(data[0] % 32) + 1;
    const char  *payload   = (const char *)(data + 1);
    size_t       remaining = size - 1;

    stomptalk_parser *parser = stomptalk_parser_new();
    if (!parser)
        return 0;

    stomptalk_set_hook(parser, &hook, NULL);

    while (remaining > 0) {
        const size_t n  = remaining < chunk ? remaining : chunk;
        const size_t rc = stomptalk_parser_execute(parser, payload, n);
        payload   += n;
        remaining -= n;
        /* rc != n means parse error; stop feeding but do not crash */
        if (rc != n)
            break;
    }

    stomptalk_parser_free(parser);
    return 0;
}
