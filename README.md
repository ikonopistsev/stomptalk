[![linux](https://github.com/ikonopistsev/stomptalk/workflows/linux/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Alinux)
[![windows](https://github.com/ikonopistsev/stomptalk/workflows/windows/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Awindows)
[![macos](https://github.com/ikonopistsev/stomptalk/workflows/macos/badge.svg?branch=master)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Amacos)

# stomptalk
stomp protocol parser http://stomp.github.io

## 1. BUILDING AND INSTALLATION
### CMake (Windows)

Install CMake: <https://www.cmake.org>

```
$ md build && cd build
$ cmake -G "Visual Studio 16" ..
$ cmake --build . --config Release
```

### CMake (Unix)

```
$ mkdir build && cd build
$ cmake -DCMAKE_BUILD_TYPE=Release ..
$ make
```
