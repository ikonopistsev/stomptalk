# stomptalk

A streaming STOMP 1.2 parser with a C99 API and a C++14 implementation.
The `stomptalk-smid` branch contains the first v2 implementation. This is a
breaking API change from 1.8.0; the frozen original and comparison results are
kept in [the implementation artifacts](artifacts/parser-v2-implementation/stage-1/README.md).

The caller supplies one aligned memory block at initialization. The parser
never allocates, reallocates, frees that block, performs I/O, or calls application
callbacks. Each call returns an ordered array of frames and payload fragments.

## C API

Public declarations are in [parser.h](include/stomptalk/parser.h). Internal C++
headers are implementation details and are not installed.

```c
#include <stomptalk/parser.h>
#include <stdio.h>
#include <stdlib.h>

static void consume(const stomptalk_frame_view *f)
{
    /* Consume/copy these views before the next execute or input release. */
    fwrite(f->method_text.data, 1, f->method_text.size, stdout);
    printf(": %zu headers, %zu body bytes at offset %llu%s\n",
        f->parsed.header_count, f->parsed.payload_size,
        (unsigned long long)f->parsed.payload_offset,
        (f->parsed.flags & STOMPTALK_FRAME_COMPLETE) ? ", complete" : "");
    /* f->headers[j].key/value are pointer + length, not NUL-terminated.
       f->payload points into this call's input. */
}

int main(void)
{
    stomptalk_parser_config config;
    stomptalk_parser_config_default(&config);
    stomptalk_memory_requirements req;
    if (stomptalk_parser_get_memory_requirements(&config, &req)) return 1;
    void *memory = malloc(req.size); /* once, owned by this application */
    stomptalk_parser *parser = NULL;
    if (!memory || stomptalk_parser_init(&config, memory, req.size, &parser)) {
        free(memory);
        return 1;
    }

    const char input[] = "SEND\ncontent-length:3\n\nabc\0";
    size_t offset = 0;
    int failed = 0;
    while (offset < sizeof(input) - 1) {
        stomptalk_parse_result r = stomptalk_parser_execute(
            parser, input + offset, sizeof(input) - 1 - offset);
        for (size_t i = 0; i < r.frame_count; ++i) consume(&r.frames[i]);
        offset += r.consumed;
        if (r.status == STOMPTALK_PARSE_ERROR) {
            failed = 1;
            break;
        }
        /* OUTPUT_FULL: results consumed above; submit only the remaining bytes.
           NEED_INPUT: wait for new input; do not resubmit the consumed prefix. */
    }
    stomptalk_parser_destroy(parser);
    free(memory);
    return failed;
}
```

One parser serves one connection, with sequential calls. `NULL, 0` is empty
input, not EOF. At connection close, a last `NEED_INPUT` means a truncated frame
or CRLF; transport code decides how to report it.

## Results and memory

`frames[i].parsed` contains the method ID, header count, optional content length,
current payload size and cumulative payload offset. `frames[i].headers[j]` is
an ordered key/value pair; duplicates are preserved and lookup returns the first.
The first `content-length` is parsed once, including zero. No header hashes are
computed. Optional exact name/ID helpers are separate from parsing.

`BEGIN` marks the first published record of a frame. `COMPLETE` requires a
validated terminal NUL, even when the stated body length has already arrived.
Empty bodies produce one `BEGIN | COMPLETE` record. Nonempty bodies can produce
`BEGIN`, continuation records, and `COMPLETE`; method and headers are available
on every record. A terminal NUL arriving alone can produce a zero-byte final
record. Headers alone produce no early record.

All results expire on the next `execute`, `reset`, or `destroy`. Keep input
unchanged until its result is processed. The parser copies fragmented/escaped
metadata into its workspace as needed, but never retains payload or requires
previous input buffers to remain alive. The caller must process/copy each body
fragment. Previously published fragments cannot be retracted if a later byte
makes the frame invalid; commit application work only after `COMPLETE`.

Defaults: 64 result records, 256 header pairs in a batch, 32 KiB of string bytes,
64 headers per frame, and `UINT64_MAX` body bytes. Configure these before `init`.
String capacity limits the total decoded method/key/value bytes of one active
frame, including temporarily borrowed strings, so validity does not depend on
input splitting. No per-field fixed 4096-byte limit remains. Exhausting a batch
returns `OUTPUT_FULL`; an active frame exceeding its own limits returns an error.
An error is sticky until `reset`; earlier complete records in that call remain
available. `consumed` includes the offending byte; `error_offset` locates detection
in the current input, which can differ from the original bad byte in a fragmented
numeric field.

The block must satisfy the returned alignment, be disjoint from input, and remain
at the same address until `destroy`. `malloc` provides the needed alignment on
the tested targets. The parser owns no memory; `destroy` does not call `free`.

## Protocol and backends

LF and CRLF are supported in one scanning path. Interframe EOL heartbeats are
accepted; extra interframe NULs are rejected. CONNECT/CONNECTED preserve literal
backslashes; other methods decode STOMP 1.2 escapes. Header octets above ASCII
are passed through without a full UTF-8 validator. Unknown methods consisting of
uppercase ASCII letters receive `UNKNOWN` plus their complete string.

Scalar, 8-byte SWAR, SSE2, and AVX2 header scanners can be selected at initialization.
`stomptalk_cpu_features`, `stomptalk_compiled_backends`, and
`stomptalk_available_backends` distinguish hardware/OS support and compiled code.
AUTO selects SSE2 when available and SWAR otherwise. Explicit unsupported requests
fail. AVX2 remains opt-in (`config.backend = STOMPTALK_BACKEND_AVX2`).
The header scanner is an ordinary inline function in each backend: AVX2 consumes
32-byte blocks, SSE2 consumes 16-byte blocks, SWAR consumes 8-byte words, and the
last 0..7 bytes use the byte loop. Every load stays within `[p,end)`; no padding
or input alignment is required. CPU dispatch happens once at initialization.
The parser keeps its existing named tailcall states.

Build controls (no global `-mavx2` is needed):

| CMake option | Effect |
| --- | --- |
| `STOMPTALK_BUILD_AVX2=OFF` | SSE2 + SWAR; removes both AVX2 implementations |
| `STOMPTALK_BUILD_SSE2=OFF` | SWAR fallback; also removes AVX2, which requires the SSE2 tail |
| `STOMPTALK_BUILD_AVX2_PARSER=OFF` | Disable only the AVX2 parser |
| `STOMPTALK_BUILD_AVX2_NAMES=OFF` | Disable only the optional AVX2 classifier |

Direct compiler defines `STOMPTALK_DISABLE_AVX2` and `STOMPTALK_DISABLE_SSE2`
have the same global effects. These disable our intrinsics, not compiler/libc
optimizations. The scalar backend remains available for correctness comparisons.

Comparison and scanning share the backend headers `src/backend/{swar,sse2,avx2}.hpp`.
For comparison, `equal<N>` expands known-length SIMD blocks at compilation; the
runtime overload loops over complete blocks. Both descend AVX2 -> SSE2 -> one
`memcmp` for the remaining length. **The portable comparison is memcmp, not a
hand-written SWAR equality algorithm.** SWAR refers to the 8-byte scanner, which
uses integer loads through `memcpy` and bit arithmetic to find the first event.
Its borrow-based mask is not an exact per-byte equality mask and is never used
to decide whether two strings are equal.

`src/is_header.hpp` provides an internal functor with a templated literal overload
and an overload for two runtime views:

```cpp
using namespace stomptalk::detail;
is_header<backend::sse2> match;
bool known = match(name, "content-length"); // equal<14>
bool dynamic = match(name, expected);       // two stomptalk_view values
```

The backend is a compile-time choice; AVX2 helpers must be included/called in an
AVX2 target context after checking CPU/OS support. Valid views require non-null
data for nonzero size (asserted internally); empty views are supported. These
internal C++ helpers do not add templates or C++ types to the public C ABI.

The parser checks only `content-length`. `src/content_length.hpp` generates two
constant layouts: ordinary text for the portable comparison, and an aligned
first-eight/last-eight layout for SSE2. The dedicated SIMD check reads exactly
14 input bytes using two overlapping 8-byte loads. AVX2 inherits this short SSE2
check. Generic `is_header` accepts ordinary strings, never this packed layout.
Methods keep their length groups and constant-sized comparisons. Known-length
payloads are skipped by length; unknown-length payloads use `memchr` for NUL.

`include/stomptalk/antoull.hpp` restores the original length-dispatched template
converter for `content-length`. Its checked overload also accepts 19/20-digit
values through `UINT64_MAX` and leading zeroes, without allocating or changing
the error contract. Invalid digits and overflow are checked at runtime.

`stomptalk_detect_header` is an optional client utility, implemented separately
in `src/names.cpp` and `src/headers.hpp`. Length selects a template group; larger
groups use one or two distinguishing characters chosen at compile time, followed
by exact equality. Pairs of names use direct comparisons. The comparison backends
are in `src/backend/{swar,sse2,avx2}.hpp`; the portable backend uses constant-sized
`memcmp`. The optional classifier selects a compiled CPU/OS-supported backend once.
AVX2 code is compiled in its own translation unit without a global `-mavx2` flag.
Disable it with `-DSTOMPTALK_BUILD_AVX2_NAMES=OFF` when configuring CMake.

The classifier and parser now use the same backend headers, with separate
initialization choices. The longest known name is 25 bytes; the AVX2 classifier
therefore uses its SSE2/portable path. Tests also cover longer strings.

Unused 1.8.0 helpers prefixed with `_`, old callback tests/harnesses, and superseded
scanner headers have been removed from this branch. Original code remains in
Git history and the adjacent `stomptalk-1.8.0` checkout.

State functions retain the original `tailcall` style. Optimized GCC/Clang builds
use tail transitions; debug and the configured fuzz/sanitizer builds use the same
functions through the outer dispatch loop. For custom instrumentation or flags
that disable tail-call elimination, define `STOMPTALK_TRAMPOLINE`. Initial validation targets Linux x86-64 with GCC and
Clang; other targets are not yet validated.

The baseline parser and C entry points compile together in `src/stomptalk.cpp`.
`src/parser_impl.hpp` contains the private implementation, with helpers defined
before the state tree. Internal symbols have hidden visibility; the C API is
explicitly exported. The optional name classifier remains a separate archive
object, so parser-only static clients do not pull it in. Optional AVX2 code
retains its separate target context.

## Tests and measurements

[PERFORMANCE.md](PERFORMANCE.md) keeps the cumulative per-stage summary,
including regressions and links to raw measurements and profiles.
The [compiler/version matrix](artifacts/version-matrix/README.md) compares four
versions at Os/O2/O3 with GCC 16 and Clang 23. The [PGO study](artifacts/pgo-study/README.md)
records both gains and regressions. [SERVER_HANDOFF.md](SERVER_HANDOFF.md)
describes the integration contract and server A/B checks.

```sh
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DSTOMPTALK_BUILD_TESTS=ON
cmake --build build
ctest --test-dir build --output-on-failure
# backend: 0 AUTO, 1 scalar, 2 SWAR, 3 SSE2, 4 AVX2; default 10 million input iterations
./build/purestomp 3
```

The [design](PARSER_V2_DRAFT.md) describes publication and lifetime rules.
[Stage 1 artifacts](artifacts/parser-v2-implementation/stage-1/README.md) contain
source snapshots, paired measurements against 1.8.0, profiles, unit results and
manual fuzz logs. [Stage 2 artifacts](artifacts/parser-v2-implementation/stage-2-names/README.md)
contain the separate name backends, aligned content-length checks, fresh paired
measurements and nine profiles. The old callback API and hash IDs are not v2-compatible; old
headers left in the source checkout are not part of the installed API.

## Building

###### CMake (Unix)

```
$ cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
$ cmake --build build
```

To build and install as a shared library:

```
$ cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DSTOMPTALK_LIBRARY_STATIC=OFF -DSTOMPTALK_LIBRARY_INSTALL=ON
$ cmake --build build
$ cmake --install build --prefix /usr/local
```

###### CMake (Windows)

Install CMake: <https://www.cmake.org>

```
$ cmake -S . -B build -G "Visual Studio 17 2022" -A x64
$ cmake --build build --config Release
```
