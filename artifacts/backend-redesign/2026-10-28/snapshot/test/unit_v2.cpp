#include "stomptalk/parser.h"
#include "stomptalk/stackbuf.hpp"
#include "stomptalk/antoull.hpp"
#include "../src/scan.hpp"
#include "../src/name_dispatch.hpp"
#include "../src/backend/sse2.hpp"
#include "name_backend_checks.hpp"
#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cstddef>
#include <string>
#include <utility>
#include <vector>
#if defined(__unix__)
#include <sys/mman.h>
#include <unistd.h>
#endif

static size_t checks = 0, streams = 0;
size_t check_avx2_names();
size_t check_avx2_scanner();
static const char *context = "";
#define CHECK(x) do { ++checks; if (!(x)) { \
    std::fprintf(stderr, "%s:%d: %s [%s]\n", __FILE__, __LINE__, #x, context); \
    std::abort(); } } while (0)
using pair = std::pair<std::string, std::string>;
using headers = std::vector<pair>;
static std::string text(stomptalk_view v) {
    CHECK(v.data || !v.size);
    return v.size ? std::string(v.data, v.size) : std::string();
}
struct expected {
    std::string method = "SEND";
    headers fields;
    std::string body;
    bool complete = true;
};
static std::string wire(std::string method = "SEND", headers h = {},
    std::string body = {}, std::string nl = "\n", bool end = true) {
    std::string s = method + nl;
    for (const auto &kv : h) s += kv.first + ":" + kv.second + nl;
    s += nl + body;
    if (end) s.push_back(0);
    return s;
}
struct instance {
    std::vector<std::max_align_t> memory;
    stomptalk_parser *p = nullptr;
    explicit instance(stomptalk_parser_config c) {
        stomptalk_memory_requirements r{};
        CHECK(stomptalk_parser_get_memory_requirements(&c, &r) == 0);
        memory.resize((r.size + sizeof(std::max_align_t) - 1) / sizeof(std::max_align_t));
        CHECK(stomptalk_parser_init(&c, memory.data(), memory.size() * sizeof(std::max_align_t), &p) == 0);
    }
    ~instance() { stomptalk_parser_destroy(p); }
};
struct capture {
    std::vector<expected> frames;
    bool open = false;
    uint64_t length = 0;
    bool has_length = false;
    void accept(stomptalk_parse_result r, const char *input, size_t size) {
        CHECK(r.frames || !r.frame_count);
        for (size_t i = 0; i < r.frame_count; ++i) {
            const auto &f = r.frames[i];
            const auto &p = f.parsed;
            CHECK(f.headers || !p.header_count);
            headers h;
            for (size_t j = 0; j < p.header_count; ++j)
                h.emplace_back(text(f.headers[j].key), text(f.headers[j].value));
            if (p.flags & STOMPTALK_FRAME_BEGIN) {
                CHECK(!open);
                frames.push_back({text(f.method_text), h, {}, false});
                open = true;
                has_length = (p.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH) != 0;
                length = p.content_length;
                CHECK(p.payload_size || (p.flags & STOMPTALK_FRAME_COMPLETE));
            } else {
                CHECK(open);
                CHECK(frames.back().method == text(f.method_text));
                CHECK(frames.back().fields == h);
            }
            CHECK(bool(p.flags & STOMPTALK_FRAME_HAS_CONTENT_LENGTH) == has_length);
            CHECK(!has_length || p.content_length == length);
            CHECK(p.payload_offset == frames.back().body.size());
            if (p.payload_size) {
                const auto address = reinterpret_cast<uintptr_t>(f.payload);
                const auto base = reinterpret_cast<uintptr_t>(input);
                CHECK(address >= base && address - base <= size);
                CHECK(p.payload_size <= size - size_t(address - base));
                frames.back().body.append(reinterpret_cast<const char *>(f.payload), p.payload_size);
            }
            if (p.flags & STOMPTALK_FRAME_COMPLETE) {
                CHECK(!has_length || frames.back().body.size() == length);
                frames.back().complete = true;
                open = false;
            }
        }
    }
};

struct case_data {
    const char *name;
    std::string input;
    std::vector<expected> frames;
    stomptalk_error_code error = 0;
    stomptalk_parse_status final_status = STOMPTALK_PARSE_OK;
};

static void run(const case_data &c, stomptalk_parser_config config, size_t cut,
                size_t chunk = 0) {
    context = c.name;
    instance parser(config);
    capture output;
    size_t offset = 0;
    stomptalk_parse_result last{};
    while (offset < c.input.size()) {
        size_t n = c.input.size() - offset;
        if (!offset && cut) n = (std::min)(n, cut);
        else if (chunk) n = (std::min)(n, chunk);
        std::vector<char> piece(c.input.begin() + offset, c.input.begin() + offset + n);
        size_t used = 0;
        while (used < n) {
            const char *at = piece.data() + used;
            last = stomptalk_parser_execute(parser.p, at, n - used);
            CHECK(last.consumed <= n - used);
            CHECK(last.error_offset <= n - used);
            output.accept(last, at, n - used);
            if (last.status == STOMPTALK_PARSE_ERROR) break;
            CHECK(last.error == 0);
            CHECK(last.consumed || last.frame_count);
            if (last.status == STOMPTALK_PARSE_OUTPUT_FULL) CHECK(last.frame_count);
            used += last.consumed;
        }
        std::fill(piece.begin(), piece.end(), char(0xa5));
        if (last.status == STOMPTALK_PARSE_ERROR) break;
        CHECK(used == n);
        offset += n;
    }
    CHECK(last.error == c.error);
    if (c.error) {
        // Earlier payload may have been published; no bad frame may complete.
        if (!output.frames.empty() && !output.frames.back().complete) output.frames.pop_back();
        const auto again = stomptalk_parser_execute(parser.p, "SEND\n\n\0", 7);
        CHECK(again.status == STOMPTALK_PARSE_ERROR && again.error == c.error);
        CHECK(!again.consumed && !again.frame_count && !again.error_offset);
        stomptalk_parser_reset(parser.p);
        const auto reset = stomptalk_parser_execute(parser.p, "SEND\n\n\0", 7);
        CHECK(reset.status == STOMPTALK_PARSE_OK && reset.frame_count == 1);
    } else {
        CHECK(last.status == c.final_status);
        const auto empty = stomptalk_parser_execute(parser.p, nullptr, 0);
        CHECK(!empty.frame_count && !empty.consumed && !empty.error);
        CHECK(empty.status == c.final_status);
    }
    CHECK(output.frames.size() == c.frames.size());
    for (size_t i = 0; i < c.frames.size(); ++i) {
        CHECK(output.frames[i].method == c.frames[i].method);
        CHECK(output.frames[i].fields == c.frames[i].fields);
        CHECK(output.frames[i].body == c.frames[i].body);
        CHECK(output.frames[i].complete == c.frames[i].complete);
    }
    ++streams;
}
static void variants(const case_data &c, stomptalk_parser_config config, bool all_cuts = true) {
    run(c, config, 0);
    run(c, config, 1, 1);
    run(c, config, 7, 7);
    if (all_cuts)
        for (size_t cut = 1; cut < c.input.size(); ++cut) run(c, config, cut);
}

static void numeric_values()
{
    context = "antoull full uint64 range, invalid digits and safe tails";
    auto valid = [&](uint64_t value, const std::string &digits)
    {
        uint64_t result = 73;
        CHECK(stomptalk::antoull(result, digits.data(), digits.size()));
        CHECK(result == value);
        if (digits.size() <= 18)
            CHECK(stomptalk::antoull(digits.data(), digits.size()) == int64_t(value));
    };
    for (uint64_t value : {UINT64_C(0), UINT64_C(1), UINT64_C(9), UINT64_C(10),
            UINT64_C(999999999999999999), UINT64_C(1000000000000000000),
            UINT64_C(9223372036854775808), UINT64_MAX})
    {
        const auto digits = std::to_string(value);
        valid(value, digits);
        valid(value, std::string(35, '0') + digits);
    }
    valid(42, std::string(4096, '0') + "42");
    uint64_t random = 1806;
    for (size_t i = 0; i < 10000; ++i)
    {
        random ^= random << 13;
        random ^= random >> 7;
        random ^= random << 17;
        valid(random, std::to_string(random));
    }
    auto invalid = [&](const std::string &digits)
    {
        uint64_t result = 73;
        CHECK(!stomptalk::antoull(result, digits.data(), digits.size()));
        CHECK(result == 73);
    };
    for (const char *digits : {"", "+1", "-1", " 1", "1 ", "1.0",
            "18446744073709551616", "99999999999999999999", "100000000000000000000"})
        invalid(digits);
    invalid(std::string(4096, '0') + "18446744073709551616");
    for (size_t size = 1; size <= 20; ++size)
    {
        auto digits = size == 20 ? std::to_string(UINT64_MAX) : std::string(size, '9');
        for (size_t at = 0; at < size; ++at)
        {
            const auto saved = digits[at];
            for (unsigned byte : {0u, 47u, 58u, 120u, 128u, 255u})
            {
                digits[at] = char(byte);
                invalid(digits);
            }
            digits[at] = saved;
        }
    }
#if defined(__unix__)
    const auto page = size_t(sysconf(_SC_PAGESIZE));
    auto memory = static_cast<char *>(mmap(nullptr, page * 2, PROT_READ | PROT_WRITE,
        MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    CHECK(memory != MAP_FAILED);
    CHECK(mprotect(memory + page, page, PROT_NONE) == 0);
    for (size_t size = 1; size <= 20; ++size)
    {
        const auto digits = size == 20 ? std::to_string(UINT64_MAX) : std::string(size, '9');
        auto data = memory + page - size;
        std::memcpy(data, digits.data(), size);
        uint64_t result = 0;
        CHECK(stomptalk::antoull(result, data, size));
        CHECK(result == std::stoull(digits));
        data[size - 1] = 'x';
        CHECK(!stomptalk::antoull(result, data, size));
    }
    CHECK(munmap(memory, page * 2) == 0);
#endif
}

static void api() {
    context = "C API and dictionaries";
    stomptalk_parser_config c;
    stomptalk_parser_config_default(&c);
    CHECK(c.max_headers_per_frame == 64);
    instance automatic(c);
    const auto automatic_backend = (stomptalk_available_backends() & STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SSE2))
        ? STOMPTALK_BACKEND_SSE2 : STOMPTALK_BACKEND_SCALAR;
    CHECK(stomptalk_parser_backend(automatic.p) == unsigned(automatic_backend));
    stomptalk_memory_requirements r{};
    CHECK(stomptalk_parser_get_memory_requirements(nullptr, &r) == 0);
    std::vector<std::max_align_t> memory((r.size + 31) / sizeof(std::max_align_t) + 2);
    stomptalk_parser *p = reinterpret_cast<stomptalk_parser *>(uintptr_t(1));
    CHECK(stomptalk_parser_init(&c, memory.data(), r.size - 1, &p) == STOMPTALK_ERROR_MEMORY);
    CHECK(p == nullptr);
    CHECK(stomptalk_parser_init(&c, reinterpret_cast<char *>(memory.data()) + 1, r.size, &p) == STOMPTALK_ERROR_ALIGNMENT);
    CHECK(!p);
    c.frame_capacity = SIZE_MAX;
    CHECK(stomptalk_parser_get_memory_requirements(&c, &r) == STOMPTALK_ERROR_CONFIG);
    stomptalk_parser_config_default(&c);
    c.header_capacity = 1;
    CHECK(stomptalk_parser_get_memory_requirements(&c, &r) == STOMPTALK_ERROR_CONFIG);
    stomptalk_parser_config_default(&c);
    c.backend = STOMPTALK_BACKEND_AVX2;
    CHECK(stomptalk_parser_get_memory_requirements(&c, &r) ==
        ((stomptalk_available_backends() & STOMPTALK_BACKEND_BIT(c.backend))
            ? STOMPTALK_ERROR_NONE : STOMPTALK_ERROR_BACKEND));
    c.backend = STOMPTALK_BACKEND_SCALAR;
    instance good(c);
    auto bad = stomptalk_parser_execute(good.p, nullptr, 1);
    CHECK(bad.error == STOMPTALK_ERROR_ARGUMENT && !bad.consumed);
    stomptalk_parser_reset(good.p);
    auto empty = stomptalk_parser_execute(good.p, nullptr, 0);
    CHECK(empty.status == STOMPTALK_PARSE_OK && !empty.frame_count);
    const pair methods[] = {
        {"SEND", "SEND"}, {"SUBSCRIBE", "SUBSCRIBE"}, {"UNSUBSCRIBE", "UNSUBSCRIBE"}
    };
    for (auto &m : methods) {
        const auto id = stomptalk_detect_method({m.first.data(), m.first.size()});
        CHECK(id != STOMPTALK_METHOD_UNKNOWN);
        CHECK(text(stomptalk_method_name(id)) == m.second);
    }
    CHECK(stomptalk_detect_method({"SEND", 4}) == STOMPTALK_METHOD_SEND);
    CHECK(stomptalk_detect_method({"SUBSCRIBX", 9}) == STOMPTALK_METHOD_UNKNOWN);
    CHECK(stomptalk_detect_method({"RUBSCRIBD", 9}) == STOMPTALK_METHOD_UNKNOWN);
    CHECK(stomptalk_detect_method({nullptr, 99}) == STOMPTALK_METHOD_UNKNOWN);
    CHECK(stomptalk_detect_method({nullptr, 4}) == STOMPTALK_METHOD_UNKNOWN);
    CHECK(stomptalk_detect_method({nullptr, 0}) == STOMPTALK_METHOD_UNKNOWN);
    CHECK(!stomptalk_method_name(STOMPTALK_METHOD_UNKNOWN).size);
    CHECK(stomptalk_detect_header({"content-length", 14}) == STOMPTALK_HEADER_CONTENT_LENGTH);
    CHECK(text(stomptalk_header_name(STOMPTALK_HEADER_MAX_LENGTH)) == "x-max-length");
    CHECK(stomptalk_detect_header({"Content-length", 14}) == STOMPTALK_HEADER_UNKNOWN);
    CHECK(stomptalk_detect_header({nullptr, 14}) == STOMPTALK_HEADER_UNKNOWN);
    CHECK(stomptalk_detect_header({nullptr, 0}) == STOMPTALK_HEADER_UNKNOWN);
}

static void names_and_accumulator() {
    context = "literal sizes, exact names and safe tails";
#if defined(__unix__)
    const size_t page = size_t(sysconf(_SC_PAGESIZE));
    auto memory = static_cast<char *>(mmap(nullptr, page * 2, PROT_READ | PROT_WRITE,
                                          MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    CHECK(memory != MAP_FAILED);
    CHECK(mprotect(memory + page, page, PROT_NONE) == 0);
#endif
    auto dictionary = [&](auto get_name, auto detect, uint64_t last, uint64_t unknown) {
        for (uint64_t id = 1; id <= last; ++id) {
            const auto name = get_name(id);
            CHECK(name.size && name.data);
            CHECK(detect(name) == id);
            std::string changed(name.data, name.size);
            for (size_t i = 0; i < name.size; ++i) {
                const char saved = changed[i];
                changed[i] = '\1';
                CHECK(detect({changed.data(), changed.size()}) == unknown);
                changed[i] = saved;
            }
            changed += '?';
            CHECK(detect({changed.data(), changed.size()}) == unknown);
#if defined(__unix__)
            char *at = memory + page - name.size;
            std::memcpy(at, name.data, name.size);
            CHECK(detect({at, name.size}) == id); // no accessible trailing NUL
            at[name.size - 1] = '\1';
            CHECK(detect({at, name.size}) == unknown);
#endif
        }
    };
    dictionary(stomptalk_method_name, stomptalk_detect_method,
               STOMPTALK_METHOD_UNSUBSCRIBE, STOMPTALK_METHOD_UNKNOWN);
    dictionary(stomptalk_header_name, stomptalk_detect_header,
               STOMPTALK_HEADER_QUEUE_TYPE, STOMPTALK_HEADER_UNKNOWN);
    for (unsigned backend = STOMPTALK_BACKEND_SWAR; backend <= STOMPTALK_BACKEND_AVX2; ++backend)
    {
        const auto detect = stomptalk::detail::select_header_detector(backend);
        const bool available = (stomptalk::detail::name_available_backends() &
            STOMPTALK_BACKEND_BIT(backend)) != 0;
        CHECK(bool(detect) == available);
        if (detect)
        {
            CHECK(detect({nullptr, 0}) == STOMPTALK_HEADER_UNKNOWN);
            dictionary(stomptalk_header_name, detect,
                STOMPTALK_HEADER_QUEUE_TYPE, STOMPTALK_HEADER_UNKNOWN);
        }
    }
    CHECK(!stomptalk::detail::select_header_detector(UINT32_MAX));
    checks += check_name_backend<stomptalk::detail::backend::swar>();
    checks += check_header_backend<STOMPTALK_BACKEND_SWAR>();
#if defined(__SSE2__)
    if (stomptalk_cpu_features() & STOMPTALK_CPU_SSE2)
    {
        checks += check_name_backend<stomptalk::detail::backend::sse2>();
        checks += check_header_backend<STOMPTALK_BACKEND_SSE2>();
    }
#endif
    if (stomptalk::detail::name_available_backends() & STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_AVX2))
        checks += check_avx2_names();
#if defined(__unix__)
    CHECK(munmap(memory, page * 2) == 0);
#endif
    context = "monotonic stackbuf and failed push";
    char data[8]{};
    stomptalk::stackbuf b(data, sizeof(data));
    CHECK(b.push("1234567", 7) && b.size() == 7);
    CHECK(b.push('8') && b.size() == 8);
    CHECK(!b.push('9') && b.size() == 0);
    CHECK(std::memcmp(data, "12345678", 8) == 0);
    CHECK(b.push("abc", 3));
    CHECK(!b.push("123456", 6) && b.size() == 0);
    CHECK(std::memcmp(data, "abc45678", 8) == 0);
    CHECK(b.push("abCDEF", 6));
    b.retain(2);
    CHECK(b.size() == 4 && std::memcmp(data, "CDEF", 4) == 0);
    CHECK(b.push("12", 2) && b.size() == 6);
    b.reset();
    CHECK(!b.size() && b.available() == sizeof(data));
}

static void suite(stomptalk_backend backend) {
    stomptalk_parser_config config;
    stomptalk_parser_config_default(&config);
    config.backend = backend;
    const headers length{{"content-length", "3"}};
    const headers escaped{{"\\cfoo", "a\\nb\\rc\\c\\\\"}};
    const headers decoded{{":foo", std::string("a\nb\rc:\\")}};
    const std::string binary("\0a\0", 3);
    std::vector<case_data> cases{
        {"empty", wire(), {{"SEND", {}, {}, true}}},
        {"length", wire("SEND", length, "abc"), {{"SEND", length, "abc", true}}},
        {"binary-leading-nul", wire("SEND", length, binary), {{"SEND", length, binary, true}}},
        {"all-nul", wire("SEND", length, std::string(3, '\0')), {{"SEND", length, std::string(3, '\0'), true}}},
        {"body-leading-eol", wire("SEND", length, "\n\rX"), {{"SEND", length, "\n\rX", true}}},
        {"crlf", wire("SEND", {{"destination", "/q"}}, "hello", "\r\n"), {{"SEND", {{"destination", "/q"}}, "hello", true}}},
        {"escapes-first-key-byte", wire("SEND", escaped), {{"SEND", decoded, {}, true}}},
        {"empty-value", wire("SEND", {{"x", ""}}), {{"SEND", {{"x", ""}}, {}, true}}},
        {"utf8-and-spaces", wire("SEND", {{" k\t", " тест \x7f"}}), {{"SEND", {{" k\t", " тест \x7f"}}, {}, true}}},
        {"unknown-method", wire("FROB", {{"x", "y"}}), {{"FROB", {{"x", "y"}}, {}, true}}},
        {"literal-connect", wire("CONNECT", {{"login", "a\\q:c"}}), {{"CONNECT", {{"login", "a\\q:c"}}, {}, true}}},
        {"literal-connected", wire("CONNECTED", {{"login", "a\\n"}}), {{"CONNECTED", {{"login", "a\\n"}}, {}, true}}},
        {"zero-length-first", wire("SEND", {{"content-length", "0"}, {"content-length", "9"}}),
            {{"SEND", {{"content-length", "0"}, {"content-length", "9"}}, {}, true}}},
        {"duplicates", wire("SEND", {{"x", "1"}, {"y", "2"}, {"x", "3"}}),
            {{"SEND", {{"x", "1"}, {"y", "2"}, {"x", "3"}}, {}, true}}},
        {"duplicate-length-ignored", wire("SEND", {{"content-length", "3"}, {"content-length", "bad"}}, "abc"),
            {{"SEND", {{"content-length", "3"}, {"content-length", "bad"}}, "abc", true}}},
        {"long-zero-prefix", wire("SEND", {{"content-length", std::string(40, '0') + "3"}}, "abc"),
            {{"SEND", {{"content-length", std::string(40, '0') + "3"}}, "abc", true}}},
        {"bad-method", "SEnD\n\n", {}, STOMPTALK_ERROR_METHOD},
        {"bad-cr", "SEND\rX", {}, STOMPTALK_ERROR_EOL},
        {"bad-heartbeat-cr", "\rX", {}, STOMPTALK_ERROR_EOL},
        {"extra-nul", std::string(1, '\0'), {}, STOMPTALK_ERROR_METHOD},
        {"bad-key-escape", wire("SEND", {{"\\tfoo", "v"}}), {}, STOMPTALK_ERROR_ESCAPE},
        {"bad-value-escape", wire("SEND", {{"x", "a\\q"}}), {}, STOMPTALK_ERROR_ESCAPE},
        {"stomp-escapes", wire("STOMP", {{"x", "\\q"}}), {}, STOMPTALK_ERROR_ESCAPE},
        {"empty-key", "SEND\n:v\n\n", {}, STOMPTALK_ERROR_HEADER},
        {"no-colon", "SEND\nbroken\n\n", {}, STOMPTALK_ERROR_HEADER},
        {"raw-colon", wire("SEND", {{"x", "a:b"}}), {}, STOMPTALK_ERROR_HEADER},
        {"bad-number-followed-frame", wire("SEND", {{"content-length", "x"}}) + wire(), {}, STOMPTALK_ERROR_CONTENT_LENGTH},
        {"overflow", wire("SEND", {{"content-length", "18446744073709551616"}}), {}, STOMPTALK_ERROR_CONTENT_LENGTH},
        {"bad-terminator", wire("SEND", length, "abc", "\n", false) + "X", {}, STOMPTALK_ERROR_TERMINATOR},
        {"pending-headers", "SEND\nx:v\n\n", {}, 0, STOMPTALK_PARSE_NEED_INPUT},
        {"pending-escape", "SEND\nx:a\\", {}, 0, STOMPTALK_PARSE_NEED_INPUT},
        {"pending-cr", "\r", {}, 0, STOMPTALK_PARSE_NEED_INPUT},
        {"pending-body", wire("SEND", length, "a", "\n", false), {{"SEND", length, "a", false}}, 0, STOMPTALK_PARSE_NEED_INPUT},
        {"pending-nul", wire("SEND", length, "abc", "\n", false), {{"SEND", length, "abc", false}}, 0, STOMPTALK_PARSE_NEED_INPUT},
        {"uint64-max-incomplete", wire("SEND", {{"content-length", "18446744073709551615"}}, "", "\n", false),
            {}, 0, STOMPTALK_PARSE_NEED_INPUT}
    };
    for (const auto &c : cases) variants(c, config);
    for (size_t n : {7u, 8u, 9u, 15u, 16u, 17u, 24u, 31u, 32u, 33u, 63u, 64u, 65u, 4096u}) {
        const headers h{{std::string(n, 'k'), std::string(n, 'v')}};
        variants({"long-fields", wire("SEND", h), {{"SEND", h, {}, true}}}, config, n < 100);
    }
    for (size_t n : {63u, 64u, 65u}) {
        headers h(n, {"x", "v"});
        case_data c{"header-limit", wire("SEND", h), {}};
        if (n <= 64) c.frames.push_back({"SEND", h, {}, true});
        else c.error = STOMPTALK_ERROR_HEADER_LIMIT;
        variants(c, config);
    }
    auto small = config;
    small.byte_capacity = 10;
    variants({"byte-exact", wire("SEND", {{"k", "12345"}}), {{"SEND", {{"k", "12345"}}, {}, true}}}, small);
    small.byte_capacity = 9;
    variants({"byte-over", wire("SEND", {{"k", "12345"}}), {}, STOMPTALK_ERROR_BYTE_LIMIT}, small);
    small = config; small.max_body_size = 2;
    variants({"body-limit-known", wire("SEND", length, "abc"), {}, STOMPTALK_ERROR_BODY_LIMIT}, small);
    variants({"body-limit-unknown", wire("SEND", {}, "abc"), {}, STOMPTALK_ERROR_BODY_LIMIT}, small);
    small = config; small.byte_capacity = 10;
    variants({"byte-output-full", wire("SEND", {{"k", "a\\nb"}}) + wire(),
        {{"SEND", {{"k", "a\nb"}}, {}, true}, {"SEND", {}, {}, true}}}, small);
    const auto exact = wire("SEND", {{"k", "1\\n2\\n3"}});
    const expected decoded_exact{"SEND", {{"k", "1\n2\n3"}}, {}, true};
    variants({"byte-owned-exact-batch", exact + exact + exact,
        {decoded_exact, decoded_exact, decoded_exact}}, small);
    small.byte_capacity = 9;
    variants({"byte-owned-over", exact, {}, STOMPTALK_ERROR_BYTE_LIMIT}, small);
    // Both limits fail in one append: keep BYTE_LIMIT and its exact offset,
    // even when completed records could otherwise be reclaimed for a retry.
    context = "byte-limit-before-output-full";
    small.byte_capacity = 16;
    {
        instance parser(small);
        const auto first = wire("SEND", {{"k", "a\\nb"}});
        const auto input = first + wire("SEND", {{"k", std::string(12, 'v')}});
        const auto r = stomptalk_parser_execute(parser.p, input.data(), input.size());
        CHECK(r.status == STOMPTALK_PARSE_ERROR && r.error == STOMPTALK_ERROR_BYTE_LIMIT);
        CHECK(r.error_offset == first.size() + 7 + 11);
        CHECK(r.consumed == r.error_offset + 1 && r.frame_count == 1);
        CHECK(text(r.frames[0].headers[0].value) == "a\nb");
    }
    small = config; small.header_capacity = small.max_headers_per_frame = 2;
    const auto many = wire("SEND", {{"x", "1"}}) + wire("SEND", {{"a", "2"}, {"b", "3"}});
    const std::vector<expected> exp{{"SEND", {{"x", "1"}}, {}, true},
                                   {"SEND", {{"a", "2"}, {"b", "3"}}, {}, true}};
    variants({"header-output-full", many, exp}, small);
    small.frame_capacity = 1;
    variants({"record-output-full", many, exp}, small);
    variants({"complete-before-error", wire() + wire("SEND", length, "abc", "\n", false) + "X",
              {{"SEND", {}, {}, true}}, STOMPTALK_ERROR_TERMINATOR}, config);
    const auto mixed = wire("SEND", {{"x", "a\\nb"}}, "first") +
                       wire("MESSAGE", length, "abc") + "\r\n" + wire();
    variants({"mixed-stream", mixed, {{"SEND", {{"x", "a\nb"}}, "first", true},
              {"MESSAGE", length, "abc", true}, {"SEND", {}, {}, true}}}, config);

#if defined(__unix__)
    context = "guard page";
    const size_t page = size_t(sysconf(_SC_PAGESIZE));
    auto mem = static_cast<char *>(mmap(nullptr, page * 2, PROT_READ | PROT_WRITE,
                                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    CHECK(mem != MAP_FAILED);
    CHECK(mprotect(mem + page, page, PROT_NONE) == 0);
    instance parser(config);
    for (size_t n = 1; n <= 65; ++n) {
        const auto data = wire("SEND", {{std::string(n, 'k'), std::string(n, 'v')}});
        char *at = mem + page - data.size();
        std::memcpy(at, data.data(), data.size());
        stomptalk_parser_reset(parser.p);
        const auto r = stomptalk_parser_execute(parser.p, at, data.size());
        CHECK(r.status == STOMPTALK_PARSE_OK && r.frame_count == 1);
        CHECK(r.frames[0].headers[0].key.size == n);
    }
    CHECK(munmap(mem, page * 2) == 0);
#endif
    context = "long tailcall chain";
    small = config; small.frame_capacity = 100000;
    small.header_capacity = small.max_headers_per_frame = 0;
    small.byte_capacity = 16;
    instance chain(small);
    std::string dense;
    dense.reserve(700000);
    for (size_t i = 0; i < 100000; ++i) dense.append("SEND\n\n\0", 7);
    const auto r = stomptalk_parser_execute(chain.p, dense.data(), dense.size());
    CHECK(r.status == STOMPTALK_PARSE_OK && r.frame_count == 100000);
}

template<bool Key>
static void scanner_first_match() {
    context = "first event, SWAR/SSE2 and narrow tails";
#if defined(__SSE2__)
    const bool sse2 = (stomptalk_cpu_features() & STOMPTALK_CPU_SSE2) != 0;
#endif
    char data[48];
    std::memset(data, 'a', sizeof(data));
    for (bool literal : {false, true}) {
        for (size_t at = 0; at < 32; ++at) {
            for (unsigned value = 0; value < 256; ++value) {
                data[at] = char(value);
                data[at + 1] = char(value ^ 1); // exercises borrow into a neighbour
                for (const char *end : {data + at + 1, data + sizeof(data)}) {
                    const char *expected = stomptalk::detail::scan_header<STOMPTALK_BACKEND_SCALAR, Key>(data, end, literal);
                    const char *actual = stomptalk::detail::scan_header<STOMPTALK_BACKEND_SWAR, Key>(data, end, literal);
                    CHECK(actual == expected);
#if defined(__SSE2__)
                    if (sse2) {
                        const char *simd = stomptalk::detail::scan_header<STOMPTALK_BACKEND_SSE2, Key>(data, end, literal);
                        CHECK(simd == expected);
                    }
#endif
                }
            }
            data[at] = data[at + 1] = 'a';
        }
    }
}

int main() {
    numeric_values();
    api();
    names_and_accumulator();
    scanner_first_match<false>();
    scanner_first_match<true>();
    if (stomptalk_available_backends() & STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_AVX2))
        checks += check_avx2_scanner();
    const auto available = stomptalk_available_backends();
    for (unsigned b = STOMPTALK_BACKEND_SCALAR; b <= STOMPTALK_BACKEND_AVX2; ++b) {
        if (!(available & STOMPTALK_BACKEND_BIT(b))) continue;
        suite(b);
        std::printf("backend %u passed\n", b);
    }
    std::printf("%zu streams, %zu checks\n", streams, checks);
}
