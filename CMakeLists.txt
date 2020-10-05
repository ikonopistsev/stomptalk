cmake_minimum_required(VERSION 3.10)

project(stomptalk VERSION 1.2.3 DESCRIPTION "stomp protocol parser")

option(STOMPTALK_DEBUG "show debug" OFF)
option(STOMPTALK_LIBRARY_STATIC "Set library type to STATIC" ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_definitions("-DSTOMPTALK_VERSION=${PROJECT_VERSION}")

set(source
    src/tag.cpp
    src/parser.cpp
    src/version.cpp
    src/parser_hook.cpp
)

set(pub_header
    include/stomptalk/memeq.hpp
    include/stomptalk/strref.hpp
    include/stomptalk/method.hpp
    include/stomptalk/parser.hpp
    include/stomptalk/version.hpp
    include/stomptalk/stackbuf.hpp
    include/stomptalk/parser_hook.hpp
)

include_directories(..)

if (STOMPTALK_LIBRARY_STATIC)
    add_library(stomptalk STATIC ${source})
else()
    set(CMAKE_POSITION_INDEPENDENT_CODE ON)
    set_target_properties(stomptalk PROPERTIES VERSION ${PROJECT_VERSION} SOVERSION 1)
    add_library(stomptalk SHARED ${source})
endif()

target_include_directories(stomptalk PUBLIC include)

#include(GNUInstallDirs)
#install(TARGETS stomptalk LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
#install(FILES ${pub_header} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/stomptalk)

