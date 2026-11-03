/*
 * OSS-Fuzz target: large header stress test
 *
 * The parser accumulates the method, header keys and values into a fixed-size
 * stack buffer (STOMPTALK_PARSER_STACK_SIZE, default 4096 bytes).  When the
 * buffer fills, stackbuf::push() returns false, which the parser turns into
 * stomptalk_error_too_big.
 *
 * This target expands a tiny input into a near-boundary STOMP frame.
 * The first byte selects the test variant and the second byte selects
 * the logical (decoded) length around STOMPTALK_PARSER_STACK_SIZE:
 *
 *   bit 0:       0 = data goes into header VALUE
 *                1 = data goes into header KEY
 *   bit 1:       0 = LF-only line endings
 *                1 = CRLF line endings
 *   bits 2-3:    0 = plain characters
 *                1 = escaped: payload bytes with bit 7 set become
 *                    \c \n \r or \\ (two bytes, one decoded character)
 *                2 = raw headers: CONNECT keeps '\' and, in the value, ':'
 *                3 = long METHOD of upper-case letters, no headers
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
static int cb_method(stomptalk_parser *p, const char *at, size_t n)
    { (void)p; (void)at; (void)n; return 0; }
static int cb_hdr_key(stomptalk_parser *p, const char *at, size_t n)
    { (void)p; (void)at; (void)n; return 0; }
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

enum { MODE_PLAIN = 0, MODE_ESCAPED = 1, MODE_RAW = 2, MODE_METHOD = 3 };

/*
 * Characters that keep the parser inside the key/val states rather than
 * aborting on invalid input — we want to reach the overflow.
 *   plain/escaped key:   letters, digits, '-', '_'
 *   plain/escaped value: printable 32-126 without '\' and ':' (since 2.0
 *                        a ':' in a value is an error, except CONNECT/CONNECTED)
 *   raw key:             printable 33-126 without ':' ('\' stays as is)
 *   raw value:           printable 32-126, ':' and '\' included
 */
static char key_char(uint8_t byte)
{
    static const char alphabet[] =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
    return alphabet[byte % (sizeof(alphabet) - 1)];
}

static char val_char(uint8_t byte)
{
    unsigned char c = byte;
    if (c < 32 || c > 126)
        c = 'X';
    if (c == '\\')
        c = 'Y';
    if (c == ':')
        c = 'Z';
    return (char)c;
}

static char raw_key_char(uint8_t byte)
{
    char c = (char)(33 + byte % (127 - 33));
    return (c == ':') ? 'K' : c;
}

static char raw_val_char(uint8_t byte)
{
    return (char)(32 + byte % (127 - 32));
}

/*
 * Write `len` decoded characters to dst, return bytes written.
 * In escaped mode one decoded character may take two bytes.
 */
static size_t fill(char *dst, size_t len, int mode, int use_key,
                   const uint8_t *src, size_t src_len)
{
    static const char escapes[4] = { 'c', 'n', 'r', '\\' };
    char *p = dst;
    for (size_t i = 0; i < len; ++i) {
        const uint8_t byte = src_len ? src[i % src_len] : (uint8_t)'K';
        if (mode == MODE_ESCAPED && (byte & 0x80)) {
            *p++ = '\\';
            *p++ = escapes[byte & 3];
        } else if (mode == MODE_RAW) {
            *p++ = use_key ? raw_key_char(byte) : raw_val_char(byte);
        } else if (mode == MODE_METHOD) {
            *p++ = (char)('A' + byte % 26);
        } else {
            *p++ = use_key ? key_char(byte) : val_char(byte);
        }
    }
    return (size_t)(p - dst);
}

/* ----------------------------------------------------------------- */

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    if (size < 2)
        return 0;

    const uint8_t flags    = data[0];
    const int     use_key  = flags & 1;
    const int     use_crlf = flags & 2;
    const int     mode     = (flags >> 2) & 3;

    const size_t logical_len =
        STOMPTALK_PARSER_STACK_SIZE - 1 + (size_t)(data[1] % 3);

    const uint8_t *payload = data + 2;
    const size_t   payload_len = size - 2;

    const char  *nl  = use_crlf ? "\r\n" : "\n";
    const size_t nll = use_crlf ? 2 : 1;

    /*
     * Frames:
     *   METHOD:       "<letters><nl><nl>\0"
     *   VALUE path:   "SEND<nl>x:<value><nl><nl>\0"    (CONNECT in raw mode)
     *   KEY path:     "SEND<nl><key>:v<nl><nl>\0"      (CONNECT in raw mode)
     * The element takes at most 2 * logical_len bytes (escaped mode).
     */
    const size_t total_max = 16 + 2 * logical_len + 3 * nll;
    char *buf = (char *)malloc(total_max);
    if (!buf)
        return 0;

    char *p = buf;
    if (mode == MODE_METHOD) {
        p += fill(p, logical_len, mode, 0, payload, payload_len);
        memcpy(p, nl, nll); p += nll;
    } else {
        const char *method = (mode == MODE_RAW) ? "CONNECT" : "SEND";
        const size_t mlen = strlen(method);
        memcpy(p, method, mlen); p += mlen;
        memcpy(p, nl, nll);      p += nll;
        if (!use_key) {
            *p++ = 'x';
            *p++ = ':';
            p += fill(p, logical_len, mode, 0, payload, payload_len);
        } else {
            p += fill(p, logical_len, mode, 1, payload, payload_len);
            *p++ = ':';
            *p++ = 'v';
        }
        /* end of header line */
        memcpy(p, nl, nll); p += nll;
    }
    /* empty line = end of headers */
    memcpy(p, nl, nll); p += nll;
    /* frame null terminator */
    *p++ = '\0';

    const size_t total = (size_t)(p - buf);

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
