# stomptalk
stomp protocol parser http://stomp.github.io

This library does not perform any I/O operations for its own, is designed to be used in performance applications. It does not make any syscalls nor allocations, it does not buffer data, it can be interrupted at anytime. The parser can work with Stomp 1.0, 1.1, 1.2 and supports some of the rabbitmq headers.

## Using

### C++

You must implement the `hook_base` interface inside the `stomptalk` namespace:

```cpp
#include "stomptalk/parser.hpp"

namespace stomptalk {

struct hook_base
{
    virtual void on_frame(parser_hook&, const char *frame_start) noexcept = 0;

    virtual void on_method(parser_hook&,
        std::uint64_t method_id, const char*, std::size_t) noexcept = 0;

    virtual void on_hdr_key(parser_hook&,
        std::uint64_t header_id, const char*, std::size_t) noexcept = 0;

    virtual void on_hdr_val(parser_hook&, const char*, std::size_t) noexcept = 0;

    virtual void on_body(parser_hook&, const void*, std::size_t) noexcept = 0;

    virtual void on_frame_end(parser_hook&, const char *frame_end) noexcept = 0;

protected:
    ~hook_base() = default;
};

} // namespace stomptalk
```

> If the request body is large, the `on_body` method will be called multiple times.

Then create a `parser` and `parser_hook`, and call `parser.run()` for each chunk of data received from a socket:

```cpp
class my_hook : public stomptalk::hook_base
{
    void on_frame(stomptalk::parser_hook&, const char*) noexcept override { }
    void on_method(stomptalk::parser_hook&, std::uint64_t method_id, const char*, std::size_t) noexcept override { }
    void on_hdr_key(stomptalk::parser_hook&, std::uint64_t header_id, const char*, std::size_t) noexcept override { }
    void on_hdr_val(stomptalk::parser_hook&, const char*, std::size_t) noexcept override { }
    void on_body(stomptalk::parser_hook&, const void*, std::size_t) noexcept override { }
    void on_frame_end(stomptalk::parser_hook&, const char*) noexcept override { }
};

my_hook user_hook;
stomptalk::parser_hook hook(user_hook);
stomptalk::parser parser;

// parse data from socket
std::size_t rc = parser.run(hook, data, data_size);
```

You can see example of integration at [stompdemo](https://github.com/ikonopistsev/stompdemo) or [stompconn](https://github.com/ikonopistsev/stompconn).

### Pure C

One `stomptalk_parser` object is used per TCP connection. Initialize the struct using `stomptalk_parser_new()` and set the callbacks. All callbacks return `int`: `0` means success, any other value stops parsing. That might look something like this:

```c
#include "stomptalk/parser.h"

int at_frame(stomptalk_parser *parser, const char *at) { return 0; }
int at_method(stomptalk_parser *parser, uint64_t method_id, const char *at, size_t length) { return 0; }
int at_hdr_key(stomptalk_parser *parser, uint64_t header_id, const char *at, size_t length) { return 0; }
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
