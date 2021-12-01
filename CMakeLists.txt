cmake_minimum_required(VERSION 3.7)

project(stomptalk VERSION 1.4.1 LANGUAGES CXX)

option(STOMPTALK_LIBRARY_STATIC "Set library type to STATIC" ON)
option(STOMPTALK_LIBRARY_INSTALL "make install" OFF)
option(STOMPTALK_USE_MEMEQ "use memeq" OFF)
option(STOMPTALK_USE_MEMCMP "use builtin memcmp" OFF)

# unsing clang libc++ if needed
if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    option(STOMPTALK_CLANG_LIBCXX "use clang libc++ for stomptalk" OFF)
    if (STOMPTALK_CLANG_LIBCXX)
        add_compile_options("-stdlib=libc++")
    endif()
else()
    option(STOMPTALK_STATIC_LIBSTDCXX "static linking of libstdc++" OFF)
endif()

macro(use_cxx17)
  if (CMAKE_VERSION VERSION_LESS "3.8.2")
    message(STATUS "stomptalk enable c++17")
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
  else ()
    set (CMAKE_CXX_STANDARD 17)
    set (CMAKE_CXX_STANDARD_REQUIRED ON)
  endif ()
endmacro(use_cxx17)

use_cxx17()

add_definitions("-DSTOMPTALK_VERSION=${PROJECT_VERSION}")

if (STOMPTALK_USE_MEMEQ)
    add_definitions("-DSTOMPTALK_USE_MEMEQ")
endif()

if (STOMPTALK_USE_MEMCMP)
    add_definitions("-DSTOMPTALK_USE_MEMCMP")
endif()

if (WIN32)
    add_definitions(-DNOMINMAX -DWIN32_LEAN_AND_MEAN)
endif()

set(source
    src/tag.cpp
    src/parser.cpp
    src/version.cpp
    src/stomplay.cpp
    src/parser_hook.cpp
    src/stomplay_hook.cpp
)

set(pub_header
    include/stomptalk/antoull.h
    include/stomptalk/antoull.hpp
    include/stomptalk/fnv1a.hpp
    include/stomptalk/header.hpp
    include/stomptalk/header.h
    include/stomptalk/hook_base.hpp
    include/stomptalk/parser_hook.hpp
    include/stomptalk/stackbuf.hpp
    include/stomptalk/stomplay.hpp
    include/stomptalk/tag.hpp
    include/stomptalk/basic_text.hpp
    include/stomptalk/frame_base.hpp
    include/stomptalk/header_store.hpp
    include/stomptalk/memeq.hpp
    include/stomptalk/parser.hpp
    include/stomptalk/parser.h
    include/stomptalk/method.h
    include/stomptalk/stomplay_hook.hpp
    include/stomptalk/sv.hpp
    include/stomptalk/version.hpp
)

if (STOMPTALK_LIBRARY_STATIC)
    add_library(stomptalk STATIC ${source})
else()
    if (STOMPTALK_STATIC_LIBSTDCXX)
        add_link_options(-static-libstdc++)
    endif()
    add_library(stomptalk SHARED ${source})
    set_target_properties(stomptalk PROPERTIES VERSION ${PROJECT_VERSION} SOVERSION 1)
endif()

target_include_directories(stomptalk PUBLIC include)

if (STOMPTALK_LIBRARY_INSTALL)
    include(GNUInstallDirs)
    install(TARGETS stomptalk LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
    install(FILES ${pub_header} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/stomptalk)
endif()
