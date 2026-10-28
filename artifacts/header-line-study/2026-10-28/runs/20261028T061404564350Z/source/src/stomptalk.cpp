#include "parser_impl.hpp"
#include "methods.hpp"
#include "headers.hpp"
#include "backend/config.hpp"
#include <algorithm>
#include <cstdint>
#include <cstring>
#include <new>

struct stomptalk_parser {
    stomptalk::parser impl;
    stomptalk_parser(const stomptalk_parser_config &c, stomptalk_frame_view *f,
        stomptalk_header_view *h, char *b, stomptalk_backend backend) noexcept
        : impl(c, f, h, b, backend) {}
};

namespace {
stomptalk_parser_config defaults() noexcept {
    return {64, 256, 32768, 64, UINT64_MAX, STOMPTALK_BACKEND_AUTO};
}
struct layout {
    size_t frames, headers, bytes, total;
};
bool area(size_t &offset, size_t count, size_t width, size_t alignment, size_t &start) noexcept {
    const size_t padding = (alignment - offset % alignment) % alignment;
    const size_t limit = size_t(PTRDIFF_MAX);
    if (offset > limit - padding) return false;
    offset += padding;
    start = offset;
    if (count > (limit - offset) / width) return false;
    offset += count * width;
    return true;
}
stomptalk_error_code get_layout(const stomptalk_parser_config &c, layout &l) noexcept {
    if (!c.frame_capacity || !c.byte_capacity || c.max_headers_per_frame > c.header_capacity)
        return STOMPTALK_ERROR_CONFIG;
    if (c.backend > STOMPTALK_BACKEND_AVX2)
        return STOMPTALK_ERROR_BACKEND;
    if (c.backend && !(stomptalk_available_backends() & STOMPTALK_BACKEND_BIT(c.backend)))
        return STOMPTALK_ERROR_BACKEND;
    size_t offset = sizeof(stomptalk_parser);
    if (!area(offset, c.frame_capacity, sizeof(stomptalk_frame_view),
              alignof(stomptalk_frame_view), l.frames) ||
        !area(offset, c.header_capacity, sizeof(stomptalk_header_view),
              alignof(stomptalk_header_view), l.headers) ||
        !area(offset, c.byte_capacity, 1, 1, l.bytes))
        return STOMPTALK_ERROR_CONFIG;
    l.total = offset;
    return STOMPTALK_ERROR_NONE;
}
}

void stomptalk_parser_config_default(stomptalk_parser_config *c) {
    if (c) *c = defaults();
}
stomptalk_error_code stomptalk_parser_get_memory_requirements(
    const stomptalk_parser_config *config, stomptalk_memory_requirements *r) {
    if (!r) return STOMPTALK_ERROR_ARGUMENT;
    *r = {};
    layout l{};
    const auto error = get_layout(config ? *config : defaults(), l);
    if (error) return error;
    r->size = l.total;
    r->alignment = (std::max)(alignof(stomptalk_parser),
        (std::max)(alignof(stomptalk_frame_view), alignof(stomptalk_header_view)));
    return STOMPTALK_ERROR_NONE;
}
stomptalk_error_code stomptalk_parser_init(const stomptalk_parser_config *config,
    void *memory, size_t size, stomptalk_parser **result) {
    if (!result) return STOMPTALK_ERROR_ARGUMENT;
    *result = nullptr;
    if (!memory) return STOMPTALK_ERROR_ARGUMENT;
    const auto c = config ? *config : defaults();
    stomptalk_memory_requirements r{};
    const auto error = stomptalk_parser_get_memory_requirements(&c, &r);
    if (error) return error;
    if (reinterpret_cast<uintptr_t>(memory) % r.alignment) return STOMPTALK_ERROR_ALIGNMENT;
    if (size < r.size) return STOMPTALK_ERROR_MEMORY;
    layout l{};
    get_layout(c, l);
    auto base = static_cast<char *>(memory);
    auto frames = reinterpret_cast<stomptalk_frame_view *>(base + l.frames);
    auto headers = reinterpret_cast<stomptalk_header_view *>(base + l.headers);
    for (size_t i = 0; i < c.frame_capacity; ++i) new (frames + i) stomptalk_frame_view;
    for (size_t i = 0; i < c.header_capacity; ++i) new (headers + i) stomptalk_header_view;
    // Keep AVX2 opt-in; configurations without SIMD fall back to SWAR.
    auto backend = c.backend;
    if (!backend) backend = (stomptalk_available_backends() & STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SSE2))
        ? stomptalk_backend(STOMPTALK_BACKEND_SSE2) : stomptalk_backend(STOMPTALK_BACKEND_SWAR);
    *result = new (memory) stomptalk_parser(c, frames, headers, base + l.bytes, backend);
    return STOMPTALK_ERROR_NONE;
}
void stomptalk_parser_destroy(stomptalk_parser *p) {
    if (p) p->~stomptalk_parser();
}
void stomptalk_parser_reset(stomptalk_parser *p) {
    if (p) p->impl.reset();
}
stomptalk_parse_result stomptalk_parser_execute(stomptalk_parser *p, const char *data, size_t size) {
    if (!p) return {0, nullptr, 0, STOMPTALK_PARSE_ERROR, STOMPTALK_ERROR_ARGUMENT, 0};
    return p->impl.run(data, size);
}
stomptalk_method_id stomptalk_detect_method(stomptalk_view v) {
    if (!v.data) return STOMPTALK_METHOD_UNKNOWN;
    return stomptalk::detail::detect_method(v);
}
stomptalk_view stomptalk_method_name(stomptalk_method_id id) {
    return stomptalk::detail::method_name(id);
}
stomptalk_view stomptalk_header_name(stomptalk_header_id id) {
    return stomptalk::detail::header_name(id);
}
const stomptalk_header_view *stomptalk_find_header(const stomptalk_frame_view *f, stomptalk_view key) {
    if (!f || (!key.data && key.size)) return nullptr;
    for (size_t i = 0; i < f->parsed.header_count; ++i) {
        const auto &h = f->headers[i];
        if (h.key.size == key.size && (!key.size || std::memcmp(h.key.data, key.data, key.size) == 0))
            return &h;
    }
    return nullptr;
}
uint32_t stomptalk_cpu_features(void) {
    uint32_t features = 0;
#if (defined(__i386__) || defined(__x86_64__)) && (defined(__GNUC__) || defined(__clang__))
    __builtin_cpu_init();
    if (__builtin_cpu_supports("sse2")) features |= STOMPTALK_CPU_SSE2;
    if (__builtin_cpu_supports("avx2")) features |= STOMPTALK_CPU_AVX2;
#endif
    return features;
}
uint32_t stomptalk_compiled_backends(void) {
    return STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SCALAR) |
           STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SWAR)
#if STOMPTALK_SSE2
           | STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SSE2)
#endif
#if STOMPTALK_PARSER_AVX2
           | STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_AVX2)
#endif
           ;
}
uint32_t stomptalk_available_backends(void) {
    uint32_t mask = stomptalk_compiled_backends();
    const auto features = stomptalk_cpu_features();
    if (!(features & STOMPTALK_CPU_SSE2))
        mask &= ~STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_SSE2);
    if (!(features & STOMPTALK_CPU_AVX2))
        mask &= ~STOMPTALK_BACKEND_BIT(STOMPTALK_BACKEND_AVX2);
    return mask;
}
stomptalk_backend stomptalk_parser_backend(const stomptalk_parser *p) {
    return p ? p->impl.backend() : stomptalk_backend(STOMPTALK_BACKEND_AUTO);
}
const char *stomptalk_version(void) { return "2.0.0"; }
