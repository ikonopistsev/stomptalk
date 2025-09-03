cmake_minimum_required(VERSION 3.10)

project(stomptalk VERSION 1.8.0 LANGUAGES CXX C)

option(STOMPTALK_LIBRARY_STATIC "Set library type to STATIC" ON)
option(STOMPTALK_LIBRARY_INSTALL "make install" OFF)
option(STOMPTALK_BUILD_TESTS "Build tests" OFF)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_definitions("-DSTOMPTALK_VERSION=${PROJECT_VERSION}")

if (WIN32)
    add_definitions(-DNOMINMAX -DWIN32_LEAN_AND_MEAN)
endif()

set(source
    src/parser.cpp
    src/stomptalk.cpp
)

set(pub_header
    include/stomptalk/type.h
    include/stomptalk/parser.h
    include/stomptalk/method.h
    include/stomptalk/header.h
    include/stomptalk/antoull.h
    include/stomptalk/antoull.hpp
    include/stomptalk/fnv1a.hpp
    include/stomptalk/hook_base.hpp
    include/stomptalk/parser_hook.hpp
    include/stomptalk/stackbuf.hpp
    include/stomptalk/hashval.hpp
    include/stomptalk/parser.hpp
)

if (STOMPTALK_LIBRARY_STATIC)
    add_library(stomptalk STATIC ${source})
    target_compile_definitions(stomptalk PUBLIC STOMPTALK_STATIC)
else()
    add_library(stomptalk SHARED ${source})
    if (WIN32)
        target_compile_definitions(stomptalk PRIVATE STOMPTALK_MAKEDLL)
    endif()
    set_target_properties(stomptalk PROPERTIES VERSION ${PROJECT_VERSION} SOVERSION 1)
endif()

set_target_properties(stomptalk
    PROPERTIES POSITION_INDEPENDENT_CODE
    ON
)

target_include_directories(stomptalk PUBLIC include/)

if (STOMPTALK_BUILD_TESTS)
    enable_testing()
    
    set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE ON)
    
    add_executable(stomptalk_test test/main.cpp)
    target_link_libraries(stomptalk_test PRIVATE stomptalk)
    target_compile_options(stomptalk_test PRIVATE
        $<$<AND:$<CONFIG:Release>,$<OR:$<CXX_COMPILER_ID:GNU>,$<CXX_COMPILER_ID:Clang>>>:
            -march=native -fno-plt -fno-semantic-interposition>)    

    add_executable(purestomp test/purestomp.c)
    set_target_properties(purestomp PROPERTIES 
        LINKER_LANGUAGE C
        C_STANDARD 99)
    target_link_libraries(purestomp PRIVATE stomptalk)
    target_compile_options(purestomp PRIVATE
        $<$<AND:$<CONFIG:Release>,$<OR:$<CXX_COMPILER_ID:GNU>,$<CXX_COMPILER_ID:Clang>>>:
            -march=native -fno-plt -fno-semantic-interposition>)    

    add_test(NAME stomptalk_test COMMAND stomptalk_test)
    #add_test(NAME purestomp_test COMMAND purestomp)
endif()

if (STOMPTALK_LIBRARY_INSTALL)
    include(GNUInstallDirs)
    install(TARGETS stomptalk LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
    install(FILES ${pub_header} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/stomptalk)
endif()
