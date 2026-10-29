#pragma once
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
void trace_event(unsigned kind, size_t bytes);
void trace_reset(void);
void trace_write(size_t chunk, size_t iterations);
#ifdef __cplusplus
}
#endif
