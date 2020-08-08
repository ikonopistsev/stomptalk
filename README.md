[![linux](https://github.com/ikonopistsev/stomptalk/workflows/linux/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Alinux)
[![windows](https://github.com/ikonopistsev/stomptalk/workflows/windows/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Awindows)
[![macos](https://github.com/ikonopistsev/stomptalk/workflows/macos/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Amacos)

# stomptalk
stomp protocol parser http://stomp.github.io
This library does not perform any I/O operations for its own. You must implement the hook_base interface.
```
class hook_base
{
    virtual void on_frame(parser_hook&) noexcept = 0;
    virtual void on_method(parser_hook&, std::string_view) noexcept = 0;
    virtual void on_hdr_key(parser_hook&, std::string_view) noexcept = 0;
    virtual void on_hdr_val(parser_hook&, std::string_view) noexcept = 0;
    virtual void on_body(parser_hook&, const void*, std::size_t) noexcept = 0;
    virtual void on_frame_end(parser_hook&) noexcept = 0;
};
```
> If the request body is large, the on_body method will be called multiple times.

Also, you must detect the 'content-length' header, then parse its value and pass to the parser.
```
void on_hdr_val(stomptalk::parser_hook& hook, std::string_view val) noexcept
{
    hook.set(static_cast<std::uint64_t>(std::atoll(val.data())));
}
```
You can see example of integration in [stompconn](https://github.com/ikonopistsev/stompconn).

## 1. Building
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
