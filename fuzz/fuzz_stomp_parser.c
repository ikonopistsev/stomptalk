/*
 * OSS-Fuzz target: full-input parser
 *
 * Feeds the entire fuzzer-supplied buffer to stomptalk_parser_execute
 * in one call.  This exercises frame detection, method/header parsing,
 * body reading and error paths.
 *
 * The last input byte may make one callback fail (values 0xf0..0xf5:
 * on_frame, on_method, on_hdr_key, on_hdr_val, on_body, on_frame_end).
 * A frame normally ends with NUL, so seeds are not affected.  Checks:
 *   - a failed callback always leaves an error in the parser;
 *   - after an error stomptalk_parser_execute() consumes nothing;
 *   - the hook argument comes back unchanged.
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

static int fail_cb = -1;      /* which callback fails for this input */
static int failed = 0;        /* the failing callback has been called */

static int answer(int cb)
{
    if (cb != fail_cb)
        return 0;
    failed = 1;
    return 1;
}

static int cb_frame(stomptalk_parser *p, const char *at)
    { (void)p; (void)at; return answer(0); }

static int cb_method(stomptalk_parser *p, const char *at, size_t len)
{
    (void)p;
    if (!stomptalk_method_str(stomptalk_method_from(at, len)))
        __builtin_trap();
    return answer(1);
}

static int cb_hdr_key(stomptalk_parser *p, const char *at, size_t len)
    { (void)p; (void)at; (void)len; return answer(2); }

static int cb_hdr_val(stomptalk_parser *p, const char *at, size_t len)
    { (void)p; (void)at; (void)len; return answer(3); }

static int cb_body(stomptalk_parser *p, const char *at, size_t len)
    { (void)p; (void)at; (void)len; return answer(4); }

static int cb_frame_end(stomptalk_parser *p, const char *at)
    { (void)p; (void)at; return answer(5); }

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
    static int arg;

    fail_cb = -1;
    failed = 0;
    if (size && (data[size - 1] >= 0xf0) && (data[size - 1] <= 0xf5))
        fail_cb = data[size - 1] - 0xf0;

    stomptalk_parser *parser = stomptalk_parser_new();
    if (!parser)
        return 0;

    stomptalk_set_hook(parser, &hook, &arg);
    stomptalk_parser_execute(parser, (const char *)data, size);

    if (stomptalk_get_hook_arg(parser) != &arg)
        __builtin_trap();
    (void)stomptalk_get_content_length(parser);

    const size_t error = stomptalk_get_error(parser);
    if (failed && (error == stomptalk_error_none))
        __builtin_trap();
    /* the error stays: the next call consumes nothing */
    if ((error != stomptalk_error_none) && size &&
        (stomptalk_parser_execute(parser, (const char *)data, size) != 0))
        __builtin_trap();
    (void)stomptalk_get_error_str(error);

    stomptalk_parser_free(parser);
    return 0;
}
