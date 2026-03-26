# Fuzzing

This directory contains libFuzzer targets for the STOMP parser and the seed
corpora they use.

## Targets

- `fuzz_stomp_parser`
  Feeds the full input buffer to `stomptalk_parser_execute()` in one call.
  This is the baseline target for frame parsing, header parsing, body parsing,
  and generic error paths.

- `fuzz_stomp_chunked`
  Feeds the input in small chunks across multiple calls to
  `stomptalk_parser_execute()`.
  This stresses incremental parsing and state transitions at chunk boundaries.

- `fuzz_stomp_large_header`
  Expands a small input into a large STOMP header close to
  `STOMPTALK_PARSER_STACK_SIZE` and checks the boundary between:
  normal parsing and `stomptalk_error_too_big`.

## Seed Corpora

Each target has its own corpus directory:

- `fuzz/corpus/parser`
- `fuzz/corpus/chunked`
- `fuzz/corpus/large_header`

### `parser` corpus format

Files are raw STOMP frames or partial frames.
The target consumes the file as-is.

### `chunked` corpus format

The first byte is the chunk size selector.
The harness maps it to a chunk size in the range `1..32` and feeds the
remaining bytes to the parser in those chunks.

Practical rule:

- byte `0x00` means chunk size `1`
- byte `0x01` means chunk size `2`
- byte `0x02` means chunk size `3`
- ...

### `large_header` corpus format

The target interprets the first bytes as control bytes:

- byte 0: flags
  bit 0 selects value path vs key path
  bit 1 selects LF vs CRLF
- byte 1: logical length selector
  `0 -> stack_size - 1`
  `1 -> stack_size`
  `2 -> stack_size + 1`
- remaining bytes: repeated payload pattern for the generated header

This keeps the on-disk seeds tiny while still reaching the large-header
boundary.

## Build

Local build example:

```bash
cmake -S . -B build-fuzz \
  -DSTOMPTALK_BUILD_FUZZ=ON \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DCMAKE_C_FLAGS="-fsanitize=address,undefined" \
  -DCMAKE_CXX_FLAGS="-fsanitize=address,undefined"

cmake --build build-fuzz
```

`STOMPTALK_BUILD_FUZZ=ON` also adds `-fsanitize=fuzzer-no-link` to the parser
library itself, so coverage is collected inside `stomptalk`, not only in the
harnesses.

## Smoke Runs

Quick corpus validation:

```bash
ASAN_OPTIONS=detect_leaks=0 ./build-fuzz/fuzz_stomp_parser -runs=0 fuzz/corpus/parser
ASAN_OPTIONS=detect_leaks=0 ./build-fuzz/fuzz_stomp_chunked -runs=0 fuzz/corpus/chunked
ASAN_OPTIONS=detect_leaks=0 ./build-fuzz/fuzz_stomp_large_header -runs=0 fuzz/corpus/large_header
```

If LeakSanitizer is available in your shell, you can omit
`ASAN_OPTIONS=detect_leaks=0`.
If the process is launched under `ptrace`, LSan may fail at shutdown even when
the target itself is fine.

## Long Runs

For longer fuzzing sessions, use a scratch corpus outside the repository so
libFuzzer can evolve inputs without polluting `git status`.

Example:

```bash
mkdir -p /tmp/stomptalk-fuzz/parser
cp -R fuzz/corpus/parser/. /tmp/stomptalk-fuzz/parser/

./build-fuzz/fuzz_stomp_parser /tmp/stomptalk-fuzz/parser
```

The same pattern applies to `chunked` and `large_header`.

## Corpus Maintenance

Recommended workflow:

1. Start from the checked-in corpus in `fuzz/corpus/<target>`.
2. Run fuzzing in a temporary directory.
3. Minimize or merge the resulting corpus.
4. Commit only a small number of new seeds that clearly improve startup
   coverage or exercise a new parser behavior.

Useful commands:

```bash
./build-fuzz/fuzz_stomp_parser \
  -merge=1 \
  -merge_control_file=/tmp/parser-merge.txt \
  /tmp/merged-parser \
  fuzz/corpus/parser \
  /tmp/stomptalk-fuzz/parser

./build-fuzz/fuzz_stomp_parser \
  -set_cover_merge=1 \
  -merge_control_file=/tmp/parser-cover.txt \
  /tmp/cover-parser \
  fuzz/corpus/parser \
  /tmp/stomptalk-fuzz/parser
```

`-merge=1` keeps all interesting units.
`-set_cover_merge=1` tries to approximate a smaller set of files with similar
coverage.

## Current Seed Strategy

The checked-in corpus is intentionally small and biased toward:

- valid baseline frames
- escaped headers
- `content-length` parsing
- incremental split cases for the chunked target
- stack-size boundary checks for the large-header target

It is not meant to be exhaustive; libFuzzer should grow richer corpora during
real runs.
