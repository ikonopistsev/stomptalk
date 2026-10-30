# stomptalk
stomp protocol parser http://stomp.github.io

This library does not perform any I/O operations for its own, is designed to be used in performance applications. It does not make any syscalls nor allocations, it does not buffer data, it can be interrupted at anytime. The parser can work with Stomp 1.0, 1.1, 1.2 and supports some of the rabbitmq headers.

## Using

### C++

Write a class with the callbacks below and pass it to the `parser` template, so that the callbacks inline into the parser:

```cpp
#include "stomptalk/parser.hpp"

struct my_hook
{
    using hook_type = stomptalk::parser_hook<my_hook>;

    void on_frame(hook_type&, const char *frame_start) noexcept { }
    void on_method(hook_type&, const char*, std::size_t) noexcept { }
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
```

> If the request body is large, the `on_body` method will be called multiple times.

A method, key or value is valid only during its callback. To turn a method into a number, use `stomptalk::method_from` from `stomptalk/method.hpp`. See `test/inline_bench.cpp` for a complete example.

Use `-O2` or higher for speed: the parser states call each other in tail position, which the compiler turns into jumps. A build without optimization, such as Debug, is detected and runs the states from a loop instead: it is slower, and its stack stays bounded. `-O1` is not safe, because it optimizes but does not enable `-foptimize-sibling-calls`, so a large buffer can overflow the stack. A build without a build type uses `Release`.

You can see example of integration at [stompdemo](https://github.com/ikonopistsev/stompdemo) or [stompconn](https://github.com/ikonopistsev/stompconn).

### Pure C

One `stomptalk_parser` object is used per TCP connection. Initialize the struct using `stomptalk_parser_new()` and set the callbacks. All callbacks return `int`: `0` means success, any other value stops parsing. That might look something like this:

```c
#include "stomptalk/parser.h"

int at_frame(stomptalk_parser *parser, const char *at) { return 0; }
int at_method(stomptalk_parser *parser, const char *at, size_t length) { return 0; }
int at_hdr_key(stomptalk_parser *parser, const char *at, size_t length) { return 0; }
int at_hdr_val(stomptalk_parser *parser, const char *at, size_t length) { return 0; }
int at_body(stomptalk_parser *parser, const char *at, size_t length) { return 0; }
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
// if rc != data_size then an error occurred

// ...

// cleanup
stomptalk_parser_free(parser);

// convert the text of a method to its number
enum stomptalk_method method = stomptalk_method_from(at, length);

// convert text with unsigned number
// returns negative value on error
int64_t val = stomptalk_antoull(at, length);
```

See the example at [purestomp](https://github.com/ikonopistsev/purestomp).

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
