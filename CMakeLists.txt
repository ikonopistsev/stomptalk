cmake_minimum_required(VERSION 3.10)

project(stomptalk VERSION 1.8.0 LANGUAGES CXX C)

include(CMakePackageConfigHelpers)
include(GNUInstallDirs)

option(STOMPTALK_LIBRARY_STATIC "Set library type to STATIC" ON)
option(STOMPTALK_LIBRARY_INSTALL "make install" OFF)
option(STOMPTALK_BUILD_TESTS "Build tests" OFF)
option(STOMPTALK_BUILD_FUZZ "Build OSS-Fuzz targets (requires Clang + libFuzzer)" OFF)

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

set(STOMPTALK_INSTALL_CMAKEDIR "${CMAKE_INSTALL_LIBDIR}/cmake/stomptalk")
set(STOMPTALK_PACKAGE_MAINTAINER
    "stomptalk maintainers <packages@example.invalid>"
    CACHE STRING "Debian package maintainer")

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

add_library(stomptalk::stomptalk ALIAS stomptalk)

set_target_properties(stomptalk PROPERTIES POSITION_INDEPENDENT_CODE ON)

target_include_directories(stomptalk
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

if (STOMPTALK_BUILD_TESTS)
    enable_testing()

    set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE ON)

    add_executable(stomptalk_test test/main.cpp)
    target_link_libraries(stomptalk_test PRIVATE stomptalk)
    target_compile_options(stomptalk_test PRIVATE
        $<$<AND:$<CONFIG:Release>,$<OR:$<CXX_COMPILER_ID:GNU>,$<CXX_COMPILER_ID:Clang>>>:
            -march=native -fno-plt -fno-semantic-interposition>)

    add_executable(stomptalk_unit_test test/unit_test.cpp)
    target_link_libraries(stomptalk_unit_test PRIVATE stomptalk)
    target_compile_options(stomptalk_unit_test PRIVATE
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
    add_test(NAME stomptalk_unit_test COMMAND stomptalk_unit_test)
    #add_test(NAME purestomp_test COMMAND purestomp)
endif()

if (STOMPTALK_BUILD_FUZZ)
    if (NOT CMAKE_C_COMPILER_ID MATCHES "Clang")
        message(WARNING
            "STOMPTALK_BUILD_FUZZ is designed for Clang. "
            "Current C compiler: ${CMAKE_C_COMPILER_ID}")
    endif()

    set(STOMPTALK_FUZZ_COMPILE_FLAGS -fsanitize=fuzzer-no-link)

    # OSS-Fuzz sets LIB_FUZZING_ENGINE to the path of libFuzzer.
    # Compile the library itself with fuzzer coverage instrumentation;
    # otherwise libFuzzer mostly sees the harness and not the parser code.
    target_compile_options(stomptalk PRIVATE ${STOMPTALK_FUZZ_COMPILE_FLAGS})

    # For local builds libFuzzer is linked via -fsanitize=fuzzer.
    if (DEFINED ENV{LIB_FUZZING_ENGINE})
        set(STOMPTALK_FUZZER_LDFLAGS "$ENV{LIB_FUZZING_ENGINE}")
    else()
        set(STOMPTALK_FUZZER_LDFLAGS "-fsanitize=fuzzer")
    endif()

    foreach(_target fuzz_stomp_parser fuzz_stomp_chunked fuzz_stomp_large_header)
        add_executable(${_target} fuzz/${_target}.c)
        set_target_properties(${_target} PROPERTIES
            LINKER_LANGUAGE C
            C_STANDARD 99)
        target_compile_options(${_target} PRIVATE ${STOMPTALK_FUZZ_COMPILE_FLAGS})
        target_link_libraries(${_target} PRIVATE stomptalk)
        target_link_options(${_target} PRIVATE ${STOMPTALK_FUZZER_LDFLAGS})
    endforeach()

    # Print per-target corpus location hints after configuration.
    message(STATUS
        "Fuzz corpora:\n"
        "  fuzz_stomp_parser: ${CMAKE_CURRENT_SOURCE_DIR}/fuzz/corpus/parser/\n"
        "  fuzz_stomp_chunked: ${CMAKE_CURRENT_SOURCE_DIR}/fuzz/corpus/chunked/\n"
        "  fuzz_stomp_large_header: ${CMAKE_CURRENT_SOURCE_DIR}/fuzz/corpus/large_header/")
endif()

if (STOMPTALK_LIBRARY_INSTALL)
    install(TARGETS stomptalk
        EXPORT stomptalkTargets
        LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}" COMPONENT runtime NAMELINK_COMPONENT dev
        ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}" COMPONENT dev
        RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}" COMPONENT runtime
        INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
    )

    install(FILES ${pub_header}
        DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/stomptalk"
        COMPONENT dev
    )

    write_basic_package_version_file(
        "${CMAKE_CURRENT_BINARY_DIR}/stomptalkConfigVersion.cmake"
        VERSION ${PROJECT_VERSION}
        COMPATIBILITY SameMajorVersion
    )

    configure_package_config_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake/stomptalkConfig.cmake.in"
        "${CMAKE_CURRENT_BINARY_DIR}/stomptalkConfig.cmake"
        INSTALL_DESTINATION "${STOMPTALK_INSTALL_CMAKEDIR}"
    )

    install(FILES
        "${CMAKE_CURRENT_BINARY_DIR}/stomptalkConfig.cmake"
        "${CMAKE_CURRENT_BINARY_DIR}/stomptalkConfigVersion.cmake"
        DESTINATION "${STOMPTALK_INSTALL_CMAKEDIR}"
        COMPONENT dev
    )

    install(EXPORT stomptalkTargets
        FILE stomptalkTargets.cmake
        NAMESPACE stomptalk::
        DESTINATION "${STOMPTALK_INSTALL_CMAKEDIR}"
        COMPONENT dev
    )

    export(EXPORT stomptalkTargets
        FILE "${CMAKE_CURRENT_BINARY_DIR}/stomptalkTargets.cmake"
        NAMESPACE stomptalk::
    )
endif()

if (CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    set(CPACK_GENERATOR "DEB")
    set(CPACK_DEB_COMPONENT_INSTALL ON)
    set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
    set(CPACK_COMPONENTS_GROUPING IGNORE)
    set(CPACK_PACKAGE_NAME "stomptalk")
    set(CPACK_PACKAGE_CONTACT "${STOMPTALK_PACKAGE_MAINTAINER}")
    set(CPACK_DEBIAN_PACKAGE_MAINTAINER "${STOMPTALK_PACKAGE_MAINTAINER}")
    set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "STOMP protocol parser")

    if (STOMPTALK_LIBRARY_STATIC)
        set(CPACK_COMPONENTS_ALL dev)
        set(CPACK_DEBIAN_DEV_PACKAGE_NAME "libstomptalk-dev")
        set(CPACK_DEBIAN_DEV_PACKAGE_SECTION "libdevel")
    else()
        set(CPACK_COMPONENTS_ALL runtime;dev)
        set(CPACK_DEBIAN_RUNTIME_PACKAGE_NAME "libstomptalk1")
        set(CPACK_DEBIAN_RUNTIME_PACKAGE_SECTION "libs")
        set(CPACK_DEBIAN_RUNTIME_PACKAGE_SHLIBDEPS ON)
        set(CPACK_DEBIAN_DEV_PACKAGE_NAME "libstomptalk-dev")
        set(CPACK_DEBIAN_DEV_PACKAGE_SECTION "libdevel")
        set(CPACK_DEBIAN_DEV_PACKAGE_DEPENDS "libstomptalk1 (= ${PROJECT_VERSION})")
    endif()

    include(CPack)
endif()
