// Счётчики из purestomp с каллбеками, известными при компиляции: они встраиваются в парсер.
// запуск: stomptalk_inline_bench <файл корпуса> <размер куска, 0 это весь буфер> <проходов>
#include "stomptalk/parser.hpp"
#include "stomptalk/method.hpp"

#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>

namespace {

struct counters
{
    using hook_type = stomptalk::parser_hook<counters>;

    std::size_t connected{};
    std::size_t frames{};
    std::size_t json{};
    std::size_t total{};
    bool is_content_type{};

    void on_frame(hook_type&, const char*) noexcept {}

    void on_method(hook_type&, const char* at, std::size_t len) noexcept
    {
        connected += (stomptalk::method_from(at, len) == st_method_connected);
    }

    void on_hdr_key(hook_type&, const char* at, std::size_t len) noexcept
    {
        is_content_type = (len == 12) && (std::memcmp(at, "content-type", 12) == 0);
    }

    void on_hdr_val(hook_type&, const char* at, std::size_t len) noexcept
    {
        if (is_content_type)
        {
            json += (len == 16) && (std::memcmp(at, "application/json", 16) == 0);
            is_content_type = false;
        }
    }

    void on_body(hook_type&, const void*, std::size_t len) noexcept
    {
        total += len;
    }

    void on_frame_end(hook_type&, const char*) noexcept
    {
        ++frames;
    }
};

} // namespace

int main(int argc, char** argv)
{
    if (argc < 4)
        return 2;

    auto f = std::fopen(argv[1], "rb");
    if (!f)
        return 2;
    std::vector<char> buf(1 << 20);
    buf.resize(std::fread(buf.data(), 1, buf.size(), f));
    std::fclose(f);

    std::size_t chunk = std::strtoull(argv[2], nullptr, 10);
    std::size_t passes = std::strtoull(argv[3], nullptr, 10);
    if (chunk == 0)
        chunk = buf.size();

    counters c;
    counters::hook_type hook(c);
    stomptalk::parser<counters> parser;

    auto start = std::chrono::steady_clock::now();
    for (std::size_t i = 0; i < passes; ++i)
    {
        for (std::size_t off = 0; off < buf.size(); off += chunk)
        {
            auto n = (std::min)(chunk, buf.size() - off);
            if (parser.run(hook, buf.data() + off, n) != n)
            {
                std::printf("parse error\n");
                return 1;
            }
        }
    }
    std::chrono::duration<double> t = std::chrono::steady_clock::now() - start;

    std::printf("%8.1f ns/frame %7.2f Mframes/s  connected %zu, frame %zu, json %zu, total %zu\n",
        t.count() * 1e9 / static_cast<double>(c.frames),
        static_cast<double>(c.frames) / t.count() / 1e6,
        c.connected, c.frames, c.json, c.total);
    return 0;
}
