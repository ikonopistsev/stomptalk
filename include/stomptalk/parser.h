#ifndef STOMPTALK_PARSER_H
#define STOMPTALK_PARSER_H
#include "stomptalk/type.h"
#include "stomptalk/method.h"
#include "stomptalk/header.h"
#ifdef __cplusplus
extern "C" {
#endif
typedef struct stomptalk_parser stomptalk_parser;
typedef uint32_t stomptalk_parse_status;
typedef uint32_t stomptalk_error_code;
typedef uint32_t stomptalk_backend;
enum {
    STOMPTALK_PARSE_OK = 0, STOMPTALK_PARSE_NEED_INPUT,
    STOMPTALK_PARSE_OUTPUT_FULL, STOMPTALK_PARSE_ERROR
};
enum {
    STOMPTALK_ERROR_NONE = 0, STOMPTALK_ERROR_ARGUMENT, STOMPTALK_ERROR_CONFIG,
    STOMPTALK_ERROR_ALIGNMENT, STOMPTALK_ERROR_MEMORY, STOMPTALK_ERROR_BACKEND,
    STOMPTALK_ERROR_METHOD, STOMPTALK_ERROR_HEADER, STOMPTALK_ERROR_ESCAPE,
    STOMPTALK_ERROR_EOL, STOMPTALK_ERROR_CONTENT_LENGTH, STOMPTALK_ERROR_TERMINATOR,
    STOMPTALK_ERROR_HEADER_LIMIT, STOMPTALK_ERROR_BYTE_LIMIT, STOMPTALK_ERROR_BODY_LIMIT
};
enum {
    STOMPTALK_BACKEND_AUTO = 0, STOMPTALK_BACKEND_SCALAR = 1,
    STOMPTALK_BACKEND_SWAR = 2, STOMPTALK_BACKEND_SSE2 = 3, STOMPTALK_BACKEND_AVX2 = 4
};
#define STOMPTALK_BACKEND_BIT(backend) (UINT32_C(1) << (backend))
enum { STOMPTALK_CPU_SSE2 = 1u, STOMPTALK_CPU_AVX2 = 2u };

typedef struct stomptalk_view { const char *data; size_t size; } stomptalk_view;
typedef struct stomptalk_header_view {
    stomptalk_view key, value;
} stomptalk_header_view;
enum {
    STOMPTALK_FRAME_HAS_CONTENT_LENGTH = 1u << 0,
    STOMPTALK_FRAME_BEGIN = 1u << 1, STOMPTALK_FRAME_COMPLETE = 1u << 2
};
typedef struct stomptalk_parsed_fields {
    stomptalk_method_id method_id;
    uint32_t flags;
    size_t header_count;
    uint64_t content_length, payload_offset;
    size_t payload_size;
} stomptalk_parsed_fields;
typedef struct stomptalk_frame_view {
    stomptalk_parsed_fields parsed;
    stomptalk_view method_text;
    const stomptalk_header_view *headers;
    const unsigned char *payload;
} stomptalk_frame_view;
typedef struct stomptalk_parse_result {
    size_t consumed;
    const stomptalk_frame_view *frames;
    size_t frame_count;
    stomptalk_parse_status status;
    stomptalk_error_code error;
    size_t error_offset;
} stomptalk_parse_result;
typedef struct stomptalk_parser_config {
    size_t frame_capacity, header_capacity, byte_capacity, max_headers_per_frame;
    uint64_t max_body_size;
    stomptalk_backend backend;
} stomptalk_parser_config;
typedef struct stomptalk_memory_requirements {
    size_t size, alignment;
} stomptalk_memory_requirements;

/* NULL config selects defaults. Init copies config. The aligned caller-owned
 * block must be disjoint from input and stay in place until destroy.
 * These functions never allocate or free the block. */
STOMPTALK_EXPORT void stomptalk_parser_config_default(stomptalk_parser_config *);
STOMPTALK_EXPORT stomptalk_error_code stomptalk_parser_get_memory_requirements(
    const stomptalk_parser_config *, stomptalk_memory_requirements *);
STOMPTALK_EXPORT stomptalk_error_code stomptalk_parser_init(
    const stomptalk_parser_config *, void *, size_t, stomptalk_parser **);
STOMPTALK_EXPORT void stomptalk_parser_destroy(stomptalk_parser *);
STOMPTALK_EXPORT void stomptalk_parser_reset(stomptalk_parser *);

/* Views expire at the next execute/reset/destroy. Input must stay unchanged
 * until the result is processed. Payload is never retained between calls.
 * BEGIN starts publication; COMPLETE requires the terminal NUL. All metadata
 * is available on continuations. frame_count counts records.
 * Do not resubmit consumed bytes. NULL/0 is empty input, not EOF.
 * Error is sticky until reset. The current bad record is not published.
 * error_offset is its detection position in this input (possibly size).
 * A repeated call after an error returns consumed=0 and error_offset=0. */
STOMPTALK_EXPORT stomptalk_parse_result stomptalk_parser_execute(
    stomptalk_parser *, const char *, size_t);
/* Name classifiers require a readable [data, data + size) for nonzero size.
 * NULL/0 is valid and returns UNKNOWN. Invalid views violate a precondition
 * (asserted in debug builds); UNKNOWN denotes an unrecognized name. */
STOMPTALK_EXPORT stomptalk_method_id stomptalk_detect_method(stomptalk_view);
STOMPTALK_EXPORT stomptalk_view stomptalk_method_name(stomptalk_method_id);
STOMPTALK_EXPORT stomptalk_header_id stomptalk_detect_header(stomptalk_view);
STOMPTALK_EXPORT stomptalk_view stomptalk_header_name(stomptalk_header_id);
STOMPTALK_EXPORT const stomptalk_header_view *stomptalk_find_header(
    const stomptalk_frame_view *, stomptalk_view);

/* CPU features include OS support; available backends also require a build.
 * Explicit unsupported requests fail at initialization; AUTO selects SSE2
 * when available, otherwise SWAR. AVX2 is opt-in for measured workloads. */
STOMPTALK_EXPORT uint32_t stomptalk_cpu_features(void);
STOMPTALK_EXPORT uint32_t stomptalk_compiled_backends(void);
STOMPTALK_EXPORT uint32_t stomptalk_available_backends(void);
STOMPTALK_EXPORT stomptalk_backend stomptalk_parser_backend(const stomptalk_parser *);
STOMPTALK_EXPORT const char *stomptalk_version(void);
#ifdef __cplusplus
}
#endif
#endif
