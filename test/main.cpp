#include <string>
#include <iostream>
#include <iomanip>

#ifdef _WIN32
#include <windows.h>
#include <winsock2.h>

// Windows implementation of gettimeofday
// Note: struct timeval is already defined in winsock2.h
int gettimeofday(struct timeval* tv, void* tz) {
    (void)tz;  // Suppress unused parameter warning
    FILETIME ft;
    unsigned __int64 tmpres = 0;

    if (tv) {
        GetSystemTimeAsFileTime(&ft);

        tmpres |= ft.dwHighDateTime;
        tmpres <<= 32;
        tmpres |= ft.dwLowDateTime;

        // Convert to microseconds
        tmpres /= 10;
        // Convert from 1601 to 1970 epoch
        tmpres -= 11644473600000000ULL;

        tv->tv_sec = (long)(tmpres / 1000000UL);
        tv->tv_usec = (long)(tmpres % 1000000UL);
    }

    return 0;
}
#else
#include <sys/time.h>
#endif

#include "stomptalk/parser.hpp"

static std::string header_key;
static std::string the_body;

long evutil_tv_to_msec(const timeval& tv)
{
    return (tv.tv_sec * 1000) + ((tv.tv_usec + 999) / 1000);
}

#ifdef NDEBUG
    static bool do_cout = false;
#else
    static bool do_cout = true;
#endif

class hook
    : public stomptalk::hook_base
{
    virtual void on_frame(stomptalk::parser_hook&, const char*) noexcept
    {
        if (do_cout)
            std::cout << "[" << std::endl;
    }

    virtual void on_method(stomptalk::parser_hook&, 
        std::uint64_t method_id, const char* ptr, std::size_t len) noexcept
    {
        if (do_cout) {
            std::cout << "\t" << method_id << " ";
            std::cout.write(ptr, len);
        }
    }

    virtual void on_hdr_key(stomptalk::parser_hook&, 
        std::uint64_t header_id, const char* ptr, std::size_t len) noexcept
    {
        if (do_cout) {
            std::cout << std::endl << "\t" << header_id << " ";
            std::cout.write(ptr, len);
        }
    }

    virtual void on_hdr_val(stomptalk::parser_hook&, const char* ptr, std::size_t len) noexcept
    {
        if (do_cout) {
            std::cout << ": ";
            std::cout.write(ptr, len);
        }
    }

    virtual void on_body(stomptalk::parser_hook&, const void* ptr, std::size_t size) noexcept
    {
        if (do_cout)
        {
            std::cout << std::endl << "\t< ";   
            std::cout.write(static_cast<const char*>(ptr), size) << " >";
        }
    }

    virtual void on_frame_end(stomptalk::parser_hook&, const char*) noexcept
    {
        if (do_cout)
            std::cout << std::endl << "]" << std::endl;
    }
};


int main()
{
    const char data_flow[] =
        "CONNECTED\r\n"
        "version:1.2\r\n"
        "session:STOMP-PARSER-TEST\r\n"
        "server:stomp-parser/1.0.0\r\n"
        "\r\n\0"
        "SEND\n"
        "id:0\n"
        "destination:/queue/foo\n"
        "ack:client\n"
        "\n\0"
        "SEND\r\n"
        "id:0\r\n"
        "\r\n\0"
        "SEND\r\n"
        "id:0\r\n"
        "\r\n\0"
        "SEND\n"
        "subscription:0\n"
        "message-id:007\n"
        "destination:/queue/a\n"
        "content-length:13\n"
        "content-type:text/plain\n"
        "message-error:false\n"
        "\n"
        "hello queue a\0"
        "SEND\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "content-type:application/json\r\n"
        "message-no-content-length:true\r\n"
        "\r\n"
        "[1,2,3,4,5,6,7]\0"
        "SEND\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "content-length:13\r\n"
        "content-type:text/plain\r\n"
        "message-error:false\r\n"
        "\r\n"
        "hello queue a\0"
        "SEND\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "content-length:13\r\n"
        "message-error:false\r\n"
        "\r\n"
        "hello queue a\0"
        "SEND\r\n"
        "subscription:0\r\n"
        "message-id:007\r\n"
        "destination:/queue/a\r\n"
        "\r\n"
        "hello queue a\0"
        "SEND\r\n"
        "receipt:77\r\n"
        "\r\n\0";

    hook user_hook;
    stomptalk::parser_hook hook(user_hook);
    stomptalk::parser parser;
    const char *data = data_flow;
    std::size_t size = sizeof(data_flow) - 1;
    const char *data_end = data + size;

    std::size_t count = 0;
    std::size_t needle = 0;
    std::size_t chunk_size = size;
    timeval tv;
    gettimeofday(&tv, nullptr);
    auto st = evutil_tv_to_msec(tv);
    while (data != data_end)
    {
        // сколько буфера осталось
        needle = data_end - data;
        // по сколько бдуем читать
        //chunk_size = std::rand() % (size / 5);
        auto readsize = std::min(chunk_size, needle);
        // парсим
        auto rc = parser.run(hook, data, readsize);

        // иногда там выдает размер больше чем задавали
        // меняем на заданный
        if (rc > readsize)
            rc = readsize;

        data += rc;

        // проверяем все ли пропарсили
        if (needle == rc)
        {
            // бесконечность
#ifdef NDEBUG
            data = data_flow;
#endif
            count += 1;  // Count each parsing iteration as 1 request
            if (!(count % 10000))
            {
                gettimeofday(&tv, nullptr);
                auto ms = evutil_tv_to_msec(tv) - st;
                double requests_per_sec = (count * 1000.0) / ms;  // requests per second

                std::cout << "Processed: " << count << " requests in " << ms << "ms, "
                          << std::fixed << std::setprecision(2) << (requests_per_sec / 1000000.0) << "M req/s" << std::endl;

                if (count >= 50000)  // Stop after 50K iterations
                    break;
            }
        }
    }

    return 0;
}
