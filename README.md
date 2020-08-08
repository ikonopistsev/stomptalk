[![CI linux](https://github.com/ikonopistsev/stomptalk/workflows/hosted-basic-autocache/badge.svg)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Ahosted-basic-autocache)
[![CI windows](https://github.com/ikonopistsev/stomptalk/workflows/hosted-basic-autocache/badge.svg)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Ahosted-basic-autocache)
[![CI macos](https://github.com/ikonopistsev/stomptalk/workflows/hosted-basic-autocache/badge.svg)](https://github.com/ikonopistsev/stomptalk/actions?query=workflow%3Amacos)

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
