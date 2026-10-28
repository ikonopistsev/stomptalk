# Fuzzing v2

The current CMake target is `fuzz_stomptalk_v2` (`fuzz_v2.cpp`). It compares the
scalar whole-input result with fragmented scalar/SWAR/SSE2/AVX2 parsing (available backends only), including
ordered headers, decoded strings, body offsets, completion flags and errors.
Input chunks are poisoned after consumption. Result capacity is 2, header
capacity 4, string capacity 128 bytes, and body limit 4096 bytes, deliberately
exercising limits and `OUTPUT_FULL`. Larger valid fields and guarded page tails
are covered by `test/unit_v2.cpp`.

```sh
cmake -S . -B build-fuzz -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DSTOMPTALK_BUILD_FUZZ=ON \
  -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
cmake --build build-fuzz
mkdir -p /tmp/stomptalk-v2-seeds
cp fuzz/corpus/parser/* fuzz/corpus/v2/* /tmp/stomptalk-v2-seeds/
ASAN_OPTIONS=detect_leaks=0 ./build-fuzz/fuzz_stomptalk_v2 \
  /tmp/stomptalk-v2-seeds -max_total_time=30 -max_len=8192 -seed=1801
```

This is a manual bounded run; no scheduled or background fuzz service is
installed. `detect_leaks=0` is needed in environments where LSan cannot run
under tracing; omit it on a host that supports LSan. CMake instruments both the
library and harness with ASan/UBSan and uses `STOMPTALK_TRAMPOLINE` so sanitizer
instrumentation does not depend on tail-call elimination.

The v2 corpus contains raw wire bytes. Its first byte also determines the
fragment size (1..23); it is still passed to the parser. The historical chunked
and large-header control formats below must not be passed to v2 as wire seeds.
The old C harnesses belong to the original 1.8.0 checkout and Git history.
They are removed from this branch; historical seeds remain for adaptation.
The chunked format starts with a chunk-size selector (1..32), followed by wire
bytes. The large-header format has flag/length selectors and a repeated pattern.
Only `parser` and `v2` seeds are raw wire inputs for the current harness.
