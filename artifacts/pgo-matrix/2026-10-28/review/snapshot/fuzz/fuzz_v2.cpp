#include "stomptalk/parser.h"
#include <algorithm>
#include <cstddef>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

static void require(bool value) { if (!value) std::abort(); }
static void field(std::string &out, stomptalk_view v) {
    require(v.data || !v.size);
    out += std::to_string(v.size) + ":";
    if (v.size) out.append(v.data, v.size);
}
struct result {
    std::vector<std::string> frames;
    std::string pending, metadata;
    uint64_t offset = 0;
    stomptalk_error_code error = 0;
    stomptalk_parse_status status = 0;
    bool open = false;
};
static result parse(const uint8_t *data, size_t size, unsigned backend, size_t chunk) {
    stomptalk_parser_config config;
    stomptalk_parser_config_default(&config);
    config.backend = backend;
    config.frame_capacity = 2;
    config.header_capacity = config.max_headers_per_frame = 4;
    config.byte_capacity = 128;
    config.max_body_size = 4096;
    stomptalk_memory_requirements req;
    require(stomptalk_parser_get_memory_requirements(&config, &req) == 0);
    std::vector<std::max_align_t> memory((req.size + sizeof(std::max_align_t) - 1) / sizeof(std::max_align_t));
    stomptalk_parser *parser;
    require(stomptalk_parser_init(&config, memory.data(), memory.size() * sizeof(std::max_align_t), &parser) == 0);
    result out;
    for (size_t at = 0; at < size && !out.error;) {
        const size_t count = (std::min)(chunk, size - at);
        std::vector<char> piece(data + at, data + at + count);
        size_t used = 0;
        while (used < count) {
            const char *begin = piece.data() + used;
            const size_t length = count - used;
            const auto r = stomptalk_parser_execute(parser, begin, length);
            require(r.consumed <= length && r.error_offset <= length);
            for (size_t i = 0; i < r.frame_count; ++i) {
                const auto &f = r.frames[i];
                std::string metadata;
                field(metadata, f.method_text);
                metadata += "/" + std::to_string(f.parsed.method_id) + "/";
                metadata += std::to_string(f.parsed.header_count) + "/";
                for (size_t j = 0; j < f.parsed.header_count; ++j) {
                    field(metadata, f.headers[j].key); field(metadata, f.headers[j].value);
                }
                metadata += "/" + std::to_string(f.parsed.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH);
                metadata += "/" + std::to_string(f.parsed.content_length);
                if (f.parsed.flags & STOMPTALK_FRAME_BEGIN) {
                    require(!out.open && (f.parsed.payload_size ||
                            (f.parsed.flags & STOMPTALK_FRAME_COMPLETE)));
                    out.metadata = metadata;
                    out.pending = metadata + "|";
                    out.offset = 0;
                    out.open = true;
                } else require(out.open && out.metadata == metadata);
                require(out.offset == f.parsed.payload_offset);
                if (f.parsed.payload_size) {
                    const uintptr_t delta = reinterpret_cast<uintptr_t>(f.payload) -
                                            reinterpret_cast<uintptr_t>(begin);
                    require(delta <= length && f.parsed.payload_size <= length - delta);
                    out.pending.append(reinterpret_cast<const char *>(f.payload), f.parsed.payload_size);
                }
                out.offset += f.parsed.payload_size;
                if (f.parsed.flags & STOMPTALK_FRAME_COMPLETE) {
                    if (f.parsed.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH)
                        require(out.offset == f.parsed.content_length);
                    out.frames.push_back(out.pending);
                    out.pending.clear();
                    out.open = false;
                }
            }
            out.error = r.error;
            out.status = r.status;
            if (out.error) break;
            require(r.consumed || r.frame_count);
            if (r.status == STOMPTALK_PARSE_OUTPUT_FULL) require(r.frame_count != 0);
            used += r.consumed;
        }
        std::fill(piece.begin(), piece.end(), char(0xa5));
        at += count;
    }
    const auto empty = stomptalk_parser_execute(parser, nullptr, 0);
    require(empty.frame_count == 0 && empty.consumed == 0 && empty.error == out.error);
    out.status = empty.status;
    if (out.error) out.pending.clear();
    stomptalk_parser_destroy(parser);
    return out;
}
extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
    const auto baseline = parse(data, size, STOMPTALK_BACKEND_SCALAR, size ? size : 1);
    const size_t chunk = size ? 1 + data[0] % 23 : 1;
    const auto available = stomptalk_available_backends();
    for (unsigned b = STOMPTALK_BACKEND_SCALAR; b <= STOMPTALK_BACKEND_AVX2; ++b) {
        if (!(available & STOMPTALK_BACKEND_BIT(b))) continue;
        const auto r = parse(data, size, b, chunk);
        require(r.frames == baseline.frames && r.pending == baseline.pending &&
                r.error == baseline.error && r.status == baseline.status);
    }
    return 0;
}
