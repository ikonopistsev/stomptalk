#include "stomptalk/parser.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv)
{
    const size_t iterations = argc > 2 ? (size_t)strtoull(argv[2], NULL, 10) : 10000000;
    stomptalk_parser_config config;
    stomptalk_parser_config_default(&config);
    if (argc > 1) config.backend = (stomptalk_backend)strtoul(argv[1], NULL, 10);
    stomptalk_memory_requirements req;
    if (stomptalk_parser_get_memory_requirements(&config, &req)) return 2;
    void *memory = malloc(req.size);
    stomptalk_parser *parser = NULL;
    if (!memory || stomptalk_parser_init(&config, memory, req.size, &parser)) return 2;
    size_t connected = 0, frames = 0, json = 0, total = 0;
    printf("stomptalk v%s\n", stomptalk_version());
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

    for (size_t i = 0; i < iterations; ++i) {
        size_t offset = 0;
        while (offset < sizeof(example10) - 1) {
            stomptalk_parse_result r = stomptalk_parser_execute(parser,
                example10 + offset, sizeof(example10) - 1 - offset);
            if (r.status == STOMPTALK_PARSE_ERROR || (!r.consumed && !r.frame_count)) {
                fprintf(stderr, "error %u at %zu\n", r.error, offset + r.error_offset);
                return 3;
            }
            for (size_t j = 0; j < r.frame_count; ++j) {
                const stomptalk_frame_view *f = r.frames + j;
                if (f->parsed.flags & STOMPTALK_FRAME_BEGIN) {
                    connected += f->parsed.method_id == STOMPTALK_METHOD_CONNECTED;
                    for (size_t k = 0; k < f->parsed.header_count; ++k) {
                        const stomptalk_header_view *h = f->headers + k;
                        if (h->key.size == 12 && memcmp(h->key.data, "content-type", 12) == 0) {
                            json += h->value.size == 16 &&
                                    memcmp(h->value.data, "application/json", 16) == 0;
                            break;
                        }
                    }
                }
                frames += (f->parsed.flags & STOMPTALK_FRAME_COMPLETE) != 0;
                total += f->parsed.payload_size;
            }
            offset += r.consumed;
        }
    }
    printf("connected %zu, frame %zu, json %zu, total %zu\n", connected, frames, json, total);
    stomptalk_parser_destroy(parser);
    free(memory);
    return connected != iterations || frames != 10 * iterations ||
           json != iterations || total != 67 * iterations;
}
