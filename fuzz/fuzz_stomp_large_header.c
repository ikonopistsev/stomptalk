/*
 * OSS-Fuzz target: large header stress test
 *
 * The parser accumulates header keys and values into a fixed-size stack
 * buffer (STOMPTALK_PARSER_STACK_SIZE, default 4096 bytes).  When the
 * buffer fills, stackbuf::push() resets its write pointer and returns
 * false, which the parser turns into stomptalk_error_too_big.
 *
 * This target expands a tiny input into a near-boundary STOMP header.
 * The first byte selects the test variant and the second byte selects
 * the logical header length around STOMPTALK_PARSER_STACK_SIZE:
 *
 *   bit 0 (low): 0 = data goes into header VALUE
 *                1 = data goes into header KEY
 *   bit 1:       0 = LF-only line endings
 *                1 = CRLF line endings
 *
 *   length byte: 0 -> stack_size - 1
 *                1 -> stack_size
 *                2 -> stack_size + 1
 *
 * Remaining bytes are repeated to fill the requested length, so the
 * overflow boundary is reachable even with libFuzzer's default max_len.
 * Seed corpus lives in fuzz/corpus/large_header/.
 */

#include "stomptalk/parser.h"

#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#ifndef STOMPTALK_PARSER_STACK_SIZE
#define STOMPTALK_PARSER_STACK_SIZE 4096
#endif

/* ---- no-op callbacks -------------------------------------------- */
static int cb_frame(stomptalk_parser *p, const char *at)
    { (void)p; (void)at; return 0; }
static int cb_method(stomptalk_parser *p, uint64_t id, const char *at, size_t n)
    { (void)p; (void)id; (void)at; (void)n; return 0; }
static int cb_hdr_key(stomptalk_parser *p, uint64_t id, const char *at, size_t n)
    { (void)p; (void)id; (void)at; (void)n; return 0; }
static int cb_hdr_val(stomptalk_parser *p, const char *at, size_t n)
    { (void)p; (void)at; (void)n; return 0; }
static int cb_body(stomptalk_parser *p, const char *at, size_t n)
    { (void)p; (void)at; (void)n; return 0; }
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

/* ---- helpers ---------------------------------------------------- */

/*
 * Sanitize bytes so they stay in the printable-non-colon range
 * (33-126, no ':') when used as a header key, or printable range
 * (32-126) when used as a header value.
 * This keeps the parser inside the key/val states rather than
 * aborting on invalid characters — we want to reach the overflow.
 */
static char sanitize_key_byte(uint8_t byte)
{
    static const char key_alphabet[] =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
        "0123456789-_";
    static const size_t alpha_len =
        sizeof(key_alphabet) - 1;   /* -1 for NUL */

    return key_alphabet[byte % alpha_len];
}

static char sanitize_val_byte(uint8_t byte)
{
    unsigned char c = byte;

    /* printable ASCII 32-126, map everything else */
    if (c < 32 || c > 126)
        c = 'X';
    /* avoid backslash (escape sequences complicate length accounting) */
    if (c == '\\')
        c = 'Y';

    return (char)c;
}

static void fill_key(char *dst, size_t len, const uint8_t *src, size_t src_len)
{
    for (size_t i = 0; i < len; ++i) {
        const uint8_t byte = src_len ? src[i % src_len] : (uint8_t)'K';
        dst[i] = sanitize_key_byte(byte);
    }
}

static void fill_val(char *dst, size_t len, const uint8_t *src, size_t src_len)
{
    for (size_t i = 0; i < len; ++i) {
        const uint8_t byte = src_len ? src[i % src_len] : (uint8_t)'V';
        dst[i] = sanitize_val_byte(byte);
    }
}

/* ----------------------------------------------------------------- */

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    if (size < 2)
        return 0;

    const uint8_t flags    = data[0];
    const int     use_key  = flags & 1;   /* 0 = value path, 1 = key path */
    const int     use_crlf = flags & 2;   /* 0 = LF, 1 = CRLF */

    const size_t logical_len =
        STOMPTALK_PARSER_STACK_SIZE - 1 + (size_t)(data[1] % 3);

    const uint8_t *payload = data + 2;
    const size_t   payload_len = (size > 2) ? (size - 2) : 0;

    const char *nl   = use_crlf ? "\r\n" : "\n";
    const size_t nll = use_crlf ? 2 : 1;

    /*
     * Build frame in heap:
     *
     *   VALUE path:  "SEND<nl>x:<payload><nl><nl>\0"
     *   KEY path:    "SEND<nl><payload>:v<nl><nl>\0"
     */
    /* method + nl + fixed part + payload + nl + nl + \0 */
    size_t fixed_pre, fixed_post;

    if (!use_key) {
        /* header value: "SEND<nl>x:" ... "<nl><nl>\0" */
        fixed_pre  = 4 + nll + 2;          /* "SEND" + nl + "x:" */
        fixed_post = nll + nll + 1;        /* nl + nl + \0        */
    } else {
        /* header key: "SEND<nl>" ... ":v<nl><nl>\0" */
        fixed_pre  = 4 + nll;              /* "SEND" + nl          */
        fixed_post = 2 + nll + nll + 1;   /* ":v" + nl + nl + \0  */
    }

    size_t total = fixed_pre + logical_len + fixed_post;
    char  *buf   = (char *)malloc(total);
    if (!buf)
        return 0;

    char *p = buf;

    /* method */
    memcpy(p, "SEND", 4); p += 4;
    memcpy(p, nl, nll);   p += nll;

    if (!use_key) {
        /* header key literal */
        *p++ = 'x';
        *p++ = ':';
        /* repeated, sanitized header value */
        fill_val(p, logical_len, payload, payload_len); p += logical_len;
    } else {
        /* repeated, sanitized header key */
        fill_key(p, logical_len, payload, payload_len); p += logical_len;
        /* header value literal */
        *p++ = ':';
        *p++ = 'v';
    }

    /* end of header line */
    memcpy(p, nl, nll); p += nll;
    /* empty line = end of headers */
    memcpy(p, nl, nll); p += nll;
    /* frame null terminator */
    *p++ = '\0';

    stomptalk_parser *parser = stomptalk_parser_new();
    if (!parser) {
        free(buf);
        return 0;
    }

    stomptalk_set_hook(parser, &hook, NULL);
    const size_t consumed = stomptalk_parser_execute(parser, buf, total);
    const size_t error = stomptalk_get_error(parser);

    if (logical_len <= STOMPTALK_PARSER_STACK_SIZE) {
        if ((consumed != total) || (error != stomptalk_error_none))
            __builtin_trap();
    } else {
        if ((error != stomptalk_error_too_big) || (consumed >= total))
            __builtin_trap();
    }

    stomptalk_parser_free(parser);
    free(buf);
    return 0;
}
