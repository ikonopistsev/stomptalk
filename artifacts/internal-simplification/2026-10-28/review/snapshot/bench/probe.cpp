#include "stomptalk/parser.h"
#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iostream>
#include <iterator>
#include <string>

// Same useful counters as the frozen 1.8.0 review probe. Allocation and input
// loading are outside the timed loop; application work is included on both sides.
int main(int argc, char **argv) {
    if (argc != 5) return 2;
    std::ifstream in(argv[1], std::ios::binary);
    if (!in) return 2;
    std::string wire((std::istreambuf_iterator<char>(in)), {});
    const std::string plan = argv[2];
    const size_t repeat = std::stoull(argv[3]);
    size_t amount = plan == "byte" ? 1 : 0;
    if (plan.compare(0, 6, "chunk:") == 0) amount = std::stoull(plan.substr(6));
    if (!repeat || (plan != "whole" && !amount)) return 2;
    stomptalk_parser_config config;
    stomptalk_parser_config_default(&config);
    config.backend = std::stoul(argv[4]);
    stomptalk_memory_requirements req;
    if (stomptalk_parser_get_memory_requirements(&config, &req)) return 2;
    void *memory = std::malloc(req.size);
    stomptalk_parser *parser = nullptr;
    if (!memory || stomptalk_parser_init(&config, memory, req.size, &parser)) return 2;
    size_t consumed = 0, completed = 0, headers = 0, body = 0, connected = 0, json = 0;
    size_t iterations = 0;
    stomptalk_error_code error = 0;
    bool short_read = false;
    const auto start = std::chrono::steady_clock::now();
    for (; iterations < repeat; ++iterations) {
        size_t offset = 0;
        while (offset < wire.size()) {
            const size_t size = amount ? (std::min)(amount, wire.size() - offset) : wire.size() - offset;
            size_t used = 0;
            while (used < size) {
                const auto r = stomptalk_parser_execute(parser, wire.data() + offset + used, size - used);
                consumed += r.consumed;
                used += r.consumed;
                error = r.error;
                for (size_t i = 0; i < r.frame_count; ++i) {
                    const auto &f = r.frames[i];
                    if (f.parsed.flags & STOMPTALK_FRAME_BEGIN) {
                        connected += f.parsed.method_id == STOMPTALK_METHOD_CONNECTED;
                        headers += f.parsed.header_count;
                        for (size_t j = 0; j < f.parsed.header_count; ++j) {
                            const auto &h = f.headers[j];
                            json += h.key.size == 12 && std::memcmp(h.key.data, "content-type", 12) == 0 &&
                                    h.value.size == 16 && std::memcmp(h.value.data, "application/json", 16) == 0;
                        }
                    }
                    completed += (f.parsed.flags & STOMPTALK_FRAME_COMPLETE) != 0;
                    body += f.parsed.payload_size;
                }
                short_read = !r.consumed && !r.frame_count;
                if (error || short_read) break;
            }
            if (error || short_read) break;
            offset += size;
        }
        if (error || short_read) break;
    }
    const auto ns = std::chrono::duration_cast<std::chrono::nanoseconds>(
        std::chrono::steady_clock::now() - start).count();
    stomptalk_parser_destroy(parser);
    std::free(memory);
    std::cout << "{\"error\":" << error << ",\"consumed\":" << consumed
              << ",\"short_read\":" << (short_read ? "true" : "false")
              << ",\"iterations\":" << iterations << ",\"elapsed_ns\":" << ns
              << ",\"completed\":" << completed << ",\"headers\":" << headers
              << ",\"body_bytes\":" << body << ",\"connected\":" << connected
              << ",\"json\":" << json << "}\n";
    return error || short_read ? 3 : 0;
}
