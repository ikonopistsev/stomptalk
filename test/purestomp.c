#ifndef _WIN32
#define _POSIX_C_SOURCE 200809L
#endif
#include "stomptalk/parser.h"
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

static const char example10[] =
    "CONNECTED\r\n"
        "version:1.2\r\n"
        "session:STOMP-PARSER-TEST\r\n"
        "server:stomp-parser/1.0.0\r\n"
        "\r\n\0"
    "MESSAGE\n"
        "id:0\n"
        "destination:/queue/foo\n"
        "ack:client\n"
        "\n\0"
    "MESSAGE\r\n"
        "id:0\r\n"
        "\r\n\0"
    "MESSAGE\r\n"
        "id:0\r\n"
        "\r\n\0"
    "MESSAGE\n"
        "subscription:0\n"
        "message-id:007\n"
        "destination:/queue/a\n"
        "content-length:13\n"
        "content-type:text/plain\n"
        "message-error:false\n"
        "\n"
        "hello queue a\0"
    "MESSAGE\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "content-type:application/json\r\n"
        "message-no-content-length:true\r\n"
        "\r\n"
        "[1,2,3,4,5,6,7]\0"
    "MESSAGE\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "content-length:13\r\n"
        "content-type:text/plain\r\n"
        "message-error:false\r\n"
        "\r\n"
        "hello queue a\0"
    "MESSAGE\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "content-length:13\r\n"
        "message-error:false\r\n"
        "\r\n"
        "hello queue a\0"
    "MESSAGE\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "some\\cheader:part\\nvalue\r\n"
        "\r\n"
        "hello queue a\0"
    "MESSAGE\r\n"
        "receipt:77\r\n"
        "\r\n\0";

struct totals {
    size_t calls, connected, frames, headers, json, body;
};

static void consume(struct totals *t, stomptalk_parse_result r)
{
    ++t->calls;
    for (size_t j = 0; j < r.frame_count; ++j) {
        const stomptalk_frame_view *f = r.frames + j;
        if (f->parsed.flags & STOMPTALK_FRAME_BEGIN) {
            t->connected += f->parsed.method_id == STOMPTALK_METHOD_CONNECTED;
            t->headers += f->parsed.header_count;
            for (size_t k = 0; k < f->parsed.header_count; ++k) {
                const stomptalk_header_view *h = f->headers + k;
                if (h->key.size == 12 && memcmp(h->key.data, "content-type", 12) == 0) {
                    t->json += h->value.size == 16 &&
                        memcmp(h->value.data, "application/json", 16) == 0;
                    break;
                }
            }
        }
        t->frames += (f->parsed.flags & STOMPTALK_FRAME_COMPLETE) != 0;
        t->body += f->parsed.payload_size;
    }
}

static int correct(struct totals t, size_t iterations)
{
    return t.connected == iterations && t.frames == 10 * iterations &&
        t.headers == 35 * iterations && t.json == iterations && t.body == 67 * iterations;
}

static int same(stomptalk_view a, stomptalk_view b)
{
    return a.size == b.size && (!a.size || memcmp(a.data, b.data, a.size) == 0);
}

/* Verification is outside timing. Reusing and overwriting input exposes stale
 * references that a permanently readable example10 would otherwise conceal. */
#define CHECK(condition) do { if (!(condition)) { \
    fprintf(stderr, "chunk %zu, line %d: %s\n", chunk, __LINE__, #condition); \
    return 0; } } while (0)
static int verify(stomptalk_parser *parser, stomptalk_parse_result reference, size_t chunk)
{
    char input[sizeof(example10) - 1];
    size_t frame = 0, body = 0;
    int open = 0;
    stomptalk_parser_reset(parser);
    for (size_t offset = 0; offset < sizeof(input);) {
        const size_t size = chunk < sizeof(input) - offset ? chunk : sizeof(input) - offset;
        memcpy(input, example10 + offset, size);
        size_t used = 0;
        while (used < size) {
            const stomptalk_parse_result r = stomptalk_parser_execute(parser, input + used, size - used);
            CHECK(r.status != STOMPTALK_PARSE_ERROR && !r.error);
            CHECK(r.consumed <= size - used && (r.consumed || r.frame_count));
            for (size_t j = 0; j < r.frame_count; ++j) {
                CHECK(frame < reference.frame_count);
                const stomptalk_frame_view *f = r.frames + j;
                const stomptalk_frame_view *e = reference.frames + frame;
                CHECK(!!(f->parsed.flags & STOMPTALK_FRAME_BEGIN) == !open);
                open = 1;
                CHECK(f->parsed.method_id == e->parsed.method_id && same(f->method_text, e->method_text));
                CHECK(f->parsed.header_count == e->parsed.header_count);
                for (size_t k = 0; k < f->parsed.header_count; ++k) {
                    CHECK(same(f->headers[k].key, e->headers[k].key));
                    CHECK(same(f->headers[k].value, e->headers[k].value));
                }
                CHECK((f->parsed.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH) ==
                    (e->parsed.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH));
                CHECK(!(f->parsed.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH) ||
                    f->parsed.content_length == e->parsed.content_length);
                CHECK(f->parsed.payload_offset == body);
                CHECK(body <= e->parsed.payload_size && f->parsed.payload_size <= e->parsed.payload_size - body);
                if (f->parsed.payload_size) {
                    const uintptr_t address = (uintptr_t)f->payload;
                    const uintptr_t start = (uintptr_t)(input + used);
                    CHECK(address >= start && address - start <= size - used);
                    CHECK(f->parsed.payload_size <= size - used - (address - start));
                    CHECK(memcmp(f->payload, e->payload + body, f->parsed.payload_size) == 0);
                }
                body += f->parsed.payload_size;
                if (f->parsed.flags & STOMPTALK_FRAME_COMPLETE) {
                    CHECK(body == e->parsed.payload_size);
                    ++frame;
                    body = 0;
                    open = 0;
                } else {
                    CHECK(f->parsed.payload_size);
                }
            }
            used += r.consumed;
            if (offset + used == sizeof(input)) CHECK(r.status == STOMPTALK_PARSE_OK);
        }
        memset(input, 0xa5, size);
        offset += size;
    }
    CHECK(frame == reference.frame_count && !open);
    return 1;
}
#undef CHECK

static double seconds(void)
{
#ifdef CLOCK_MONOTONIC
    struct timespec now;
    if (clock_gettime(CLOCK_MONOTONIC, &now)) { perror("clock_gettime"); exit(2); }
    return (double)now.tv_sec + (double)now.tv_nsec * 1e-9;
#else
    return (double)clock() / CLOCKS_PER_SEC;
#endif
}

static size_t number(const char *s)
{
    char *end;
    errno = 0;
    const unsigned long long n = strtoull(s, &end, 10);
    if (errno || end == s || *end || *s == '-' || n > SIZE_MAX) {
        fprintf(stderr, "invalid number: %s\n", s);
        exit(2);
    }
    return (size_t)n;
}

int main(int argc, char **argv)
{
    if (argc > 4 || (argc > 1 && strcmp(argv[1], "--help") == 0)) {
        fprintf(stderr, "usage: %s [backend [iterations [chunk|all]]]\n"
            "backend: 0 AUTO, 1 scalar, 2 SWAR, 3 SSE2, 4 AVX2\n"
            "iterations: repeats of 10 frames (default 10000000)\n"
            "chunk: 1..%zu bytes; all sweeps every size; omitted means whole input\n",
            argv[0], sizeof(example10) - 1);
        return argc > 4 ? 2 : 0;
    }
    const size_t iterations = argc > 2 ? number(argv[2]) : 10000000;
    const size_t backend = argc > 1 ? number(argv[1]) : STOMPTALK_BACKEND_AUTO;
    const int all = argc > 3 && strcmp(argv[3], "all") == 0;
    const size_t first = all ? 1 : argc > 3 ? number(argv[3]) : sizeof(example10) - 1;
    const size_t last = all ? sizeof(example10) - 1 : first;
    if (!iterations || iterations > SIZE_MAX / (sizeof(example10) - 1) ||
        backend > STOMPTALK_BACKEND_AVX2 || !first || first > sizeof(example10) - 1) return 2;

    stomptalk_parser_config config;
    stomptalk_parser_config_default(&config);
    config.backend = (stomptalk_backend)backend;
    stomptalk_memory_requirements req;
    if (stomptalk_parser_get_memory_requirements(&config, &req)) return 2;
    void *memory = malloc(req.size), *expected_memory = malloc(req.size);
    stomptalk_parser *parser = NULL, *expected_parser = NULL;
    if (!memory || !expected_memory ||
        stomptalk_parser_init(&config, memory, req.size, &parser) ||
        stomptalk_parser_init(&config, expected_memory, req.size, &expected_parser)) return 2;
    const stomptalk_parse_result reference = stomptalk_parser_execute(expected_parser,
        example10, sizeof(example10) - 1);
    struct totals t = {0};
    consume(&t, reference);
    if (reference.status != STOMPTALK_PARSE_OK || reference.error ||
        reference.consumed != sizeof(example10) - 1 || !correct(t, 1)) return 3;

    printf("# stomptalk %s backend=%u input_bytes=%zu frames_per_iteration=10 timer=%s\n",
        stomptalk_version(), (unsigned)stomptalk_parser_backend(parser), sizeof(example10) - 1,
#ifdef CLOCK_MONOTONIC
        "monotonic"
#else
        "process_cpu"
#endif
    );
    puts("chunk_bytes,iterations,calls,frames,headers,payload_bytes,seconds,mframes_s,mb_s");
    for (size_t chunk = first; chunk <= last; ++chunk) {
        if (!verify(parser, reference, chunk)) return 3;
        stomptalk_parser_reset(parser);
        memset(&t, 0, sizeof(t));
        const double start = seconds();
        for (size_t i = 0; i < iterations; ++i) {
            size_t offset = 0;
            while (offset < sizeof(example10) - 1) {
                const size_t remaining = sizeof(example10) - 1 - offset;
                const size_t end = offset + (chunk < remaining ? chunk : remaining);
                while (offset < end) {
                    const stomptalk_parse_result r = stomptalk_parser_execute(parser,
                        example10 + offset, end - offset);
                    if (r.status == STOMPTALK_PARSE_ERROR || r.error || r.consumed > end - offset ||
                        (!r.consumed && !r.frame_count)) {
                        fprintf(stderr, "chunk %zu iteration %zu error %u at %zu\n",
                            chunk, i, r.error, offset + r.error_offset);
                        return 3;
                    }
                    consume(&t, r);
                    offset += r.consumed;
                }
            }
        }
        const double elapsed = seconds() - start;
        if (!correct(t, iterations)) {
            fprintf(stderr, "chunk %zu: incorrect result totals\n", chunk);
            return 3;
        }
        printf("%zu,%zu,%zu,%zu,%zu,%zu,%.9f,%.6f,%.6f\n", chunk, iterations,
            t.calls, t.frames, t.headers, t.body, elapsed, t.frames / elapsed / 1e6,
            (double)iterations * (sizeof(example10) - 1) / elapsed / 1e6);
        fflush(stdout);
    }
    /* Preserve the old whole-input summary used by existing benchmark scripts. */
    if (argc < 4) printf("connected %zu, frame %zu, json %zu, total %zu\n",
        t.connected, t.frames, t.json, t.body);
    stomptalk_parser_destroy(expected_parser);
    stomptalk_parser_destroy(parser);
    free(expected_memory);
    free(memory);
    return 0;
}
