#include "stomptalk/parser.h"

#include <string.h>
#include <stdio.h>

int at_frame(stomptalk_parser* parser, const char* at);

int at_method(stomptalk_parser* parser, uint64_t method_id, const char *at, size_t length);

int at_hdr_key(stomptalk_parser* parser, uint64_t header_id, const char *at, size_t length);

int at_hdr_val(stomptalk_parser* parser, const char *at, size_t length);

int at_body(stomptalk_parser* parser, const char *at, size_t length);

int at_frame_end(stomptalk_parser* parser, const char*);

size_t connected_count = 0;
size_t frame_count = 0;
uint64_t header_num_id = 0;
size_t content_length = 0;
size_t application_json = 0;

int main()
{
    fprintf(stdout, "stomptalk v%s\n", stomptalk_version());

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

    stomptalk_parser *parser = stomptalk_parser_new();

    stomptalk_parser_hook hook = {
        .on_frame = at_frame,
        .on_method = at_method,
        .on_hdr_key = at_hdr_key,
        .on_hdr_val = at_hdr_val,
        .on_body = at_body,
        .on_frame_end = at_frame_end
    };

    stomptalk_set_hook(parser, &hook, 0);

    // parse 100 million of frames
    // % time ./purestomp
    // stomptalk v1.7.0
    // connected 10000000, frame 100000000, json 10000000, total 670000000
    // ./purestomp  8,35s user 0,00s system 99% cpu 8,351 total
    // it over 10 million request per second

    size_t count = 10000000;
    size_t i = 0;
    for ( ; i < count; ++i)
    {
        size_t needle = 0;
        const char *data = example10;
        size_t size = sizeof(example10) - 1;
        const char *data_end = data + size;
        size_t chunk_size = size;

        while (data != data_end)
        {
            // сколько буфера осталось
            needle = data_end - data;
            // по сколько бдуем читать
            //chunk_size = rand() % (size / 5);
            size_t readsize = chunk_size < needle ? chunk_size :needle;
            // парсим
            size_t rc = stomptalk_parser_execute(parser, data, readsize);
            if (rc != readsize)
            {
                // it's error!
                stomptalk_parser_free(parser);
                return 1;
            }

            data += rc;

            // проверяем все ли пропарсили
            if (needle == rc)
            {
                // this is end
                break;
            }
        }
    }

    fprintf(stdout, "connected %zu, frame %zu, json %zu, total %zu\n", 
       connected_count, frame_count, application_json, content_length);

    stomptalk_parser_free(parser);

    return 0;
}

int at_frame(stomptalk_parser* parser, const char* at)
{
    // no error
    return 0;
}

int at_method(stomptalk_parser* parser, uint64_t method_id, const char* at, size_t length)
{
    if (st_method_connected == method_id)
         ++connected_count;

    return 0;
}

int at_hdr_key(stomptalk_parser* parser, uint64_t header_id, const char* at, size_t length)
{
    header_num_id = header_id;
    return 0;
}

int at_hdr_val(stomptalk_parser* parser, const char* at, size_t length)
{
    static const char json[] = "application/json";
    static const size_t json_size = sizeof(json) - 1;
    if (st_header_content_type == header_num_id)
    {
        if (json_size == length)
        {
            if (memcmp(json, at, length) == 0)
                ++application_json;
        }

        header_num_id = st_header_none;
    }

    return 0;
}

int at_body(stomptalk_parser* parser, const char* at, size_t length)
{
    content_length += length;
    return 0;
}

int at_frame_end(stomptalk_parser* parser, const char* at)
{
    ++frame_count;
    // no error
    return 0;
}
