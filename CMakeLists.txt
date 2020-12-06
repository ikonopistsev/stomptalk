cmake_minimum_required(VERSION 3.10)

project(stomptalk VERSION 1.3.2 DESCRIPTION "stomp protocol parser")

option(STOMPTALK_DEBUG "show debug" OFF)
option(STOMPTALK_LIBRARY_STATIC "Set library type to STATIC" ON)
option(STOMPTALK_LIBRARY_INSTALL "make install" OFF)
option(STOMPTALK_USE_MEMEQ "use memeq" OFF)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if (STOMPTALK_USE_MEMEQ)
    add_definitions("-DSTOMPTALK_USE_MEMEQ")
endif()

set(source
    src/tag.cpp
    src/parser.cpp
    src/version.cpp
    src/stomplay.cpp
    src/parser_hook.cpp
    src/header_store.cpp
    src/stomplay_hook.cpp
)

set(pub_header
    include/stomptalk/antoull.hpp
    include/stomptalk/fnv1a.hpp
    include/stomptalk/header.hpp
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
    include/stomptalk/stomplay_hook.hpp
    include/stomptalk/sv.hpp
    include/stomptalk/version.hpp
)

if (STOMPTALK_LIBRARY_STATIC)
    add_library(stomptalk STATIC ${source})
else()
    set(CMAKE_POSITION_INDEPENDENT_CODE ON)
    set_target_properties(stomptalk PROPERTIES VERSION ${PROJECT_VERSION} SOVERSION 1)
    add_library(stomptalk SHARED ${source})
endif()

target_include_directories(stomptalk PUBLIC include)

if (STOMPTALK_LIBRARY_INSTALL)
    include(GNUInstallDirs)
    install(TARGETS stomptalk LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
    install(FILES ${pub_header} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/stomptalk)
endif()
