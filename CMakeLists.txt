cmake_minimum_required(VERSION 3.14)
project(stomptalk VERSION 1.0.0 DESCRIPTION "stomp protocol parser")

option(STOMPTALK_DEBUG "show debug" OFF)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(source
    src/parser.cpp
    src/parser_hook.cpp
    src/tag.cpp
)

set(pub_header
    include/stomptalk/memeq.hpp
    include/stomptalk/strref.hpp
    include/stomptalk/method.hpp
    include/stomptalk/parser.hpp
    include/stomptalk/stackbuf.hpp
    include/stomptalk/parser_hook.hpp
)

include_directories(..)

add_library(stomptalk STATIC ${source})

target_include_directories(stomptalk PUBLIC include)

include(GNUInstallDirs)

set_target_properties(stomptalk PROPERTIES
    VERSION ${PROJECT_VERSION}
    SOVERSION 1)

install(TARGETS stomptalk
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(FILES ${pub_header} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/stomptalk)

