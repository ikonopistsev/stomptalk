[![linux](https://github.com/ikonopistsev/stomptalk/workflows/linux/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Alinux)
[![windows](https://github.com/ikonopistsev/stomptalk/workflows/windows/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Awindows)
[![macos](https://github.com/ikonopistsev/stomptalk/workflows/macos/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Amacos)
[![Total alerts](https://img.shields.io/lgtm/alerts/g/ikonopistsev/stomptalk.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/ikonopistsev/stomptalk/alerts/)
[![Language grade: C/C++](https://img.shields.io/lgtm/grade/cpp/g/ikonopistsev/stomptalk.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/ikonopistsev/stomptalk/context:cpp)

# stomptalk
stomp protocol parser http://stomp.github.io

This library does not perform any I/O operations for its own, is designed to be used in performance applications. It does not make any syscalls nor allocations, it does not buffer data, it can be interrupted at anytime. The parser can work with Stomp 1.0, 1.1, 1.2 and supports some of the rabbitmq headers.

## Using

You must implement the hook_base interface. 
```
class hook_base
{
public:
    hook_base() = default;
    virtual ~hook_base() = default;
    virtual void on_frame(parser_hook&, const char *frame_start) noexcept = 0;
    virtual void on_method(parser_hook&, std::string_view) noexcept = 0;
    virtual void on_hdr_key(parser_hook&, std::string_view) noexcept = 0;
    virtual void on_hdr_val(parser_hook&, std::string_view) noexcept = 0;
    virtual void on_body(parser_hook&, const void*, std::size_t) noexcept = 0;
    virtual void on_frame_end(parser_hook&, const char *frame_end) noexcept = 0;
};
```
> If the request body is large, the on_body method will be called multiple times.

You can see example of integration at [stompconn](https://github.com/ikonopistsev/stompconn).

## Pure C using

One stomptalk_parser object is used per TCP connection. Initialize the struct using stomptalk_parser_new() and set the callbacks. That might look something like this for a request parser:
```
#include "stomptalk/parser.h"

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

// setup user callabacks
stomptalk_set_hook(parser, &hook, my_connection_ptr);

// ...

// parse some data from socket
size_t rc = stomptalk_parser_execute(parser, data, data_size);

// ...

// cleanup
stomptalk_parser_free(parser);

// some useful methods
// detect method
size_t rc = stomptalk_eval_method(at, length)

// detect header
size_t rc = stomptalk_eval_header(at, length);

// convert text with unsigned number
// it return negative value if error
int64_t rc = stomptalk_antoull(at, length);
```
See the example at [purestomp](https://github.com/ikonopistsev/purestomp).

## Building

###### CMake (Windows)

Install CMake: <https://www.cmake.org>

```
$ md build && cd build
$ cmake -G "Visual Studio 16 2019" -A x64 ..
$ cmake --build . --config Release
```

###### CMake (Unix)

```
$ mkdir build && cd build
$ cmake -DCMAKE_BUILD_TYPE=Release ..
$ make
```
