#include "trace.h"
#include <stdio.h>
#include <string.h>
static struct { size_t calls, nonzero, bytes; } counts[3];
void trace_event(unsigned kind, size_t bytes)
{
    ++counts[kind].calls;
    counts[kind].nonzero += bytes != 0;
    counts[kind].bytes += bytes;
}
void trace_reset(void) { memset(counts, 0, sizeof(counts)); }
void trace_write(size_t chunk, size_t iterations)
{
    static int header;
    if (!header++) fputs("chunk,iterations,copy_calls,copy_bytes,retain_calls,retain_nonzero,retain_bytes,header_calls,header_nonzero,header_bytes\n", stderr);
    fprintf(stderr, "%zu,%zu,%zu,%zu,%zu,%zu,%zu,%zu,%zu,%zu\n", chunk, iterations,
        counts[0].calls, counts[0].bytes,
        counts[1].calls, counts[1].nonzero, counts[1].bytes,
        counts[2].calls, counts[2].nonzero, counts[2].bytes);
}
