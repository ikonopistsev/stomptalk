# stomptalk
stomp protocol parser http://stomp.github.io

The library does no I/O of its own and is designed for performance applications. Parsing makes no syscalls and no allocations, and it can be interrupted at any point: data may come in chunks of any size. The body is never buffered. A method, header key or header value that is split between chunks or contains escapes is assembled in a fixed buffer inside the parser. The parser works with STOMP 1.0, 1.1 and 1.2.

stomptalk is a tokenizer: it reports methods, header keys and values and body pieces, and leaves their meaning to the caller. The only header it interprets itself is `content-length`.

## Tokenizer rules

- LF, CR and NUL between frames are skipped, so heart-beats need no handling.
- A method is any `[A-Z]+` word, and a body is allowed on any method. `method_from` returns `st_method_unknown` for a method outside the standard.
- Header keys and values are unescaped (`\n`, `\r`, `\c`, `\\`); any other escape is an error. A `:` inside a value must be escaped, and a header without a colon or with an empty name is an error.
- CONNECT and CONNECTED headers are passed raw, without unescaping, for STOMP 1.0 compatibility.
- `content-length` must be digits only, up to 18 of them. The first one in a frame wins, and `0` is valid. A NUL must follow the body. Without `content-length`, the body ends at the first NUL.

## Limits and errors

- A method, header key or header value may be at most `STOMPTALK_PARSER_STACK_SIZE` bytes long: 4096 by default, and the macro can be redefined before including the parser. A longer one fails with `stomptalk_error_too_big`, whether or not it is split between chunks. The body has no limit.
- The parser returns the number of bytes it consumed. If that is less than the size passed in, an error occurred.
- **An error stays.** After an error, every further call returns 0 and parses nothing, and there is no reset. Close the connection, or create a new parser and hook.
- A parser keeps a pointer into its own buffer, so it cannot be copied or moved.

## Using

### C++

Write a class with the callbacks below and pass it to the `parser` template, so that the callbacks inline into the parser:

```cpp
#include "stomptalk/parser.hpp"
#include "stomptalk/method.hpp"

struct my_hook
{
    using hook_type = stomptalk::parser_hook<my_hook>;

    void on_frame(hook_type&, const char *frame_start) noexcept { }
    void on_method(hook_type&, const char* at, std::size_t len) noexcept
    {
        if (stomptalk::method_from(at, len) == st_method_unknown) { /* ... */ }
    }
    void on_hdr_key(hook_type&, const char*, std::size_t) noexcept { }
    void on_hdr_val(hook_type&, const char*, std::size_t) noexcept { }
    void on_body(hook_type&, const void*, std::size_t) noexcept { }
    void on_frame_end(hook_type&, const char *frame_end) noexcept { }
};

my_hook user_hook;
my_hook::hook_type hook(user_hook);
stomptalk::parser<my_hook> parser;

// parse data from socket
std::size_t rc = parser.run(hook, data, data_size);
if (rc != data_size)
{
    // stomptalk_get_error_str(hook.error()) describes the error;
    // the parser stays in the error state, close the connection
}
```

A method, key or value is valid only during its callback: it points either into your data or into the parser's buffer, which the next element reuses. Copy it if you need it later.

The body may arrive in several `on_body` calls, one for each chunk of input.

A callback stops parsing with `hook.set(stomptalk_error_generic)`; `run` then returns early. `hook.ok()` and `hook.error()` report the state, and inside a frame `hook.has_content_length()` and `hook.content_length()` report its `content-length`.

`test/inline_bench.cpp` is a complete example.

#### Compiler flags

Use `-O2` or higher for speed: the parser states call each other in tail position, and the compiler turns those calls into jumps. **`-O1` is not safe**, and neither is `-fno-optimize-sibling-calls`: the code is optimized, but the calls do not become jumps, so a large buffer can overflow the stack. A build without optimization, such as Debug, is detected and runs the states from a loop instead: it is slower, and its stack stays bounded.

With GCC and Clang on x86-64, header lines are scanned with SSE2. With `-mavx2`, or a `-march` that includes AVX2, they are scanned with AVX2. The C++ parser is a template, so it is the flags of **your** code that decide. The C API uses the flags the library was built with.

Other compilers and targets use the portable path: a lookup table instead of SIMD. MSVC does not define `__OPTIMIZE__`, so with MSVC the states also always run from a loop, even in Release.

### Pure C

One `stomptalk_parser` object is used per TCP connection. Initialize it with `stomptalk_parser_new()` and set the callbacks. All callbacks return `int`: `0` means success, any other value stops parsing. That might look something like this:

```c
#include "stomptalk/parser.h"

int at_frame(stomptalk_parser *parser, const char *at) { return 0; }
int at_method(stomptalk_parser *parser, const char *at, size_t length)
{
    // convert the text of a method to its number
    enum stomptalk_method method = stomptalk_method_from(at, length);
    return 0;
}
int at_hdr_key(stomptalk_parser *parser, const char *at, size_t length) { return 0; }
int at_hdr_val(stomptalk_parser *parser, const char *at, size_t length) { return 0; }
int at_body(stomptalk_parser *parser, const char *at, size_t length)
{
    // the pointer passed to stomptalk_set_hook
    struct my_connection *conn = stomptalk_get_hook_arg(parser);
    return 0;
}
int at_frame_end(stomptalk_parser *parser, const char *at) { return 0; }

// create parser instance
stomptalk_parser *parser = stomptalk_parser_new();

stomptalk_parser_hook hook = {
    .on_frame = at_frame,
    .on_method = at_method,
    .on_hdr_key = at_hdr_key,
    .on_hdr_val = at_hdr_val,
    .on_body = at_body,
    .on_frame_end = at_frame_end
};

// setup user callbacks
stomptalk_set_hook(parser, &hook, my_connection_ptr);

// ...

// parse some data from socket
size_t rc = stomptalk_parser_execute(parser, data, data_size);
if (rc != data_size)
{
    const char *text = stomptalk_get_error_str(stomptalk_get_error(parser));
    // the parser stays in the error state, close the connection
}

// ...

// cleanup
stomptalk_parser_free(parser);

// convert text with an unsigned number, up to 18 digits
// returns a negative value on error
int64_t val = stomptalk_antoull(at, length);
```

Also available: `stomptalk_get_content_length()` for the current frame, `stomptalk_method_str()` and `stomptalk_version()`.

`test/purestomp.c` is a complete example and a speed test. A standalone version is in [purestomp](https://github.com/ikonopistsev/purestomp).

## Building

###### CMake (Unix)

```
$ cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
$ cmake --build build
```

A single-configuration build without a build type uses `Release`.

To build and install as a shared library:

```
$ cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DSTOMPTALK_LIBRARY_STATIC=OFF -DSTOMPTALK_LIBRARY_INSTALL=ON
$ cmake --build build
$ cmake --install build --prefix /usr/local
```

An installed library is found with CMake:

```cmake
find_package(stomptalk 2 CONFIG REQUIRED)
target_link_libraries(my_app PRIVATE stomptalk::stomptalk)
```

Within your own project, `add_subdirectory(stomptalk)` gives the same `stomptalk::stomptalk` target.

Options:

- `STOMPTALK_LIBRARY_STATIC` (`ON`): static or shared library.
- `STOMPTALK_LIBRARY_INSTALL` (`OFF`): install rules and the CMake package.
- `STOMPTALK_BUILD_TESTS` (`OFF`): tests, `ctest --test-dir build`.
- `STOMPTALK_BUILD_FUZZ` (`OFF`): libFuzzer targets, requires Clang.

The library is C++14, and its C examples are C99.

###### CMake (Windows)

Install CMake: <https://www.cmake.org>

```
$ cmake -S . -B build -G "Visual Studio 17 2022" -A x64
$ cmake --build build --config Release
```

With MSVC the parser uses the portable path described in [Compiler flags](#compiler-flags).
