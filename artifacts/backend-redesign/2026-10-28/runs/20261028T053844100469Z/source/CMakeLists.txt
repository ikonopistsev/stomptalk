cmake_minimum_required(VERSION 3.10)

project(stomptalk VERSION 2.0.0 LANGUAGES CXX C)

include(CMakePackageConfigHelpers)
include(GNUInstallDirs)

option(STOMPTALK_LIBRARY_STATIC "Set library type to STATIC" ON)
option(STOMPTALK_LIBRARY_INSTALL "make install" OFF)
option(STOMPTALK_BUILD_TESTS "Build tests" OFF)
option(STOMPTALK_BUILD_FUZZ "Build OSS-Fuzz targets (requires Clang + libFuzzer)" OFF)
option(STOMPTALK_BUILD_SSE2 "Build SSE2 (required for the AVX2 tail)" ON)
option(STOMPTALK_BUILD_AVX2 "Build optional AVX2 implementations" ON)
option(STOMPTALK_BUILD_AVX2_NAMES "Build the optional AVX2 name classifier" ON)
option(STOMPTALK_BUILD_AVX2_PARSER "Build the optional AVX2 parser scanner" ON)

if (NOT STOMPTALK_BUILD_SSE2)
    add_definitions(-DSTOMPTALK_DISABLE_SSE2)
endif()

if (NOT STOMPTALK_BUILD_AVX2)
    add_definitions(-DSTOMPTALK_DISABLE_AVX2)
endif()

if (NOT STOMPTALK_BUILD_AVX2_NAMES)
    add_definitions(-DSTOMPTALK_DISABLE_AVX2_NAMES)
endif()

if (NOT STOMPTALK_BUILD_AVX2_PARSER)
    add_definitions(-DSTOMPTALK_DISABLE_AVX2_PARSER)
endif()

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_definitions("-DSTOMPTALK_VERSION=${PROJECT_VERSION}")

if (WIN32)
    add_definitions(-DNOMINMAX -DWIN32_LEAN_AND_MEAN)
endif()

set(source
    src/stomptalk.cpp
    src/names.cpp
)

# Keep optional ISA code isolated from the baseline core compilation target.
if (STOMPTALK_BUILD_SSE2 AND STOMPTALK_BUILD_AVX2 AND STOMPTALK_BUILD_AVX2_PARSER)
    list(APPEND source src/parser_avx2.cpp)
endif()
if (STOMPTALK_BUILD_SSE2 AND STOMPTALK_BUILD_AVX2 AND STOMPTALK_BUILD_AVX2_NAMES)
    list(APPEND source src/names_avx2.cpp)
endif()

set(pub_header
    include/stomptalk/type.h
    include/stomptalk/parser.h
    include/stomptalk/method.h
    include/stomptalk/header.h
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
    set_target_properties(stomptalk PROPERTIES VERSION ${PROJECT_VERSION} SOVERSION 2)
endif()

add_library(stomptalk::stomptalk ALIAS stomptalk)

set_target_properties(stomptalk PROPERTIES
    POSITION_INDEPENDENT_CODE ON
    CXX_VISIBILITY_PRESET hidden
    VISIBILITY_INLINES_HIDDEN YES
)

target_include_directories(stomptalk
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

if (STOMPTALK_BUILD_TESTS)
    enable_testing()
    add_executable(stomptalk_unit_test test/unit_v2.cpp test/unit_names_avx2.cpp test/unit_scan_avx2.cpp)
    # Internal selector checks must not require exporting C++ implementation
    # symbols from the shared library. The C99 smoke still links the real DSO.
    set(unit_library stomptalk)
    if (NOT STOMPTALK_LIBRARY_STATIC)
        add_library(stomptalk_test_impl STATIC ${source})
        target_compile_definitions(stomptalk_test_impl PUBLIC STOMPTALK_STATIC)
        target_include_directories(stomptalk_test_impl PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
        set_target_properties(stomptalk_test_impl PROPERTIES
            POSITION_INDEPENDENT_CODE ON
            CXX_VISIBILITY_PRESET hidden
            VISIBILITY_INLINES_HIDDEN YES
        )
        set(unit_library stomptalk_test_impl)
    endif()
    target_link_libraries(stomptalk_unit_test PRIVATE ${unit_library})
    add_test(NAME stomptalk_unit_test COMMAND stomptalk_unit_test)

    # The source is C99. CMake supplies the C++ runtime required by the library.
    add_executable(purestomp test/purestomp.c)
    set_target_properties(purestomp PROPERTIES C_STANDARD 99 C_STANDARD_REQUIRED ON)
    target_link_libraries(purestomp PRIVATE stomptalk)
    add_test(NAME stomptalk_c99_smoke COMMAND purestomp 0 10)
endif()

if (STOMPTALK_BUILD_FUZZ)
    if (NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        message(FATAL_ERROR "STOMPTALK_BUILD_FUZZ requires Clang/libFuzzer")
    endif()
    target_compile_definitions(stomptalk PRIVATE STOMPTALK_TRAMPOLINE)
    target_compile_options(stomptalk PRIVATE -fsanitize=fuzzer-no-link,address,undefined)
    target_link_libraries(stomptalk PUBLIC -fsanitize=address,undefined)
    add_executable(fuzz_stomptalk_v2 fuzz/fuzz_v2.cpp)
    target_compile_options(fuzz_stomptalk_v2 PRIVATE -fsanitize=fuzzer-no-link,address,undefined)
    target_link_libraries(fuzz_stomptalk_v2 PRIVATE stomptalk)
    if (DEFINED ENV{LIB_FUZZING_ENGINE})
        target_link_libraries(fuzz_stomptalk_v2 PRIVATE "$ENV{LIB_FUZZING_ENGINE}" -fsanitize=address,undefined)
    else()
        target_link_libraries(fuzz_stomptalk_v2 PRIVATE -fsanitize=fuzzer,address,undefined)
    endif()
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
    set(CPACK_PACKAGE_NAME "stomptalk")
    set(CPACK_PACKAGE_CONTACT "${STOMPTALK_PACKAGE_MAINTAINER}")
    set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "STOMP protocol parser")
    set(CPACK_COMPONENTS_GROUPING IGNORE)

    if (STOMPTALK_LIBRARY_STATIC)
        set(CPACK_COMPONENTS_ALL dev)
    else()
        set(CPACK_COMPONENTS_ALL runtime;dev)
    endif()

    if (WIN32)
        set(CPACK_GENERATOR "ZIP;WIX")
        set(CPACK_ARCHIVE_COMPONENT_INSTALL ON)
        set(CPACK_PACKAGE_INSTALL_DIRECTORY "stomptalk")

        # Stable GUID is required for WiX upgrades to work correctly.
        # Without it each version installs as a separate product.
        set(CPACK_WIX_UPGRADE_GUID "A1B2C3D4-E5F6-7890-ABCD-EF1234567890")

        set(CPACK_COMPONENT_RUNTIME_DISPLAY_NAME "stomptalk runtime")
        set(CPACK_COMPONENT_RUNTIME_DESCRIPTION "stomptalk shared library (DLL)")
        set(CPACK_COMPONENT_DEV_DISPLAY_NAME "stomptalk dev")
        set(CPACK_COMPONENT_DEV_DESCRIPTION "stomptalk headers, import library and CMake config")
        if (NOT STOMPTALK_LIBRARY_STATIC)
            set(CPACK_COMPONENT_DEV_DEPENDS runtime)
        endif()
    else()
        set(CPACK_GENERATOR "DEB")
        set(CPACK_DEB_COMPONENT_INSTALL ON)
        set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
        set(CPACK_DEBIAN_PACKAGE_MAINTAINER "${STOMPTALK_PACKAGE_MAINTAINER}")

        if (STOMPTALK_LIBRARY_STATIC)
            set(CPACK_DEBIAN_DEV_PACKAGE_NAME "libstomptalk-dev")
            set(CPACK_DEBIAN_DEV_PACKAGE_SECTION "libdevel")
        else()
            set(CPACK_DEBIAN_RUNTIME_PACKAGE_NAME "libstomptalk2")
            set(CPACK_DEBIAN_RUNTIME_PACKAGE_SECTION "libs")
            set(CPACK_DEBIAN_RUNTIME_PACKAGE_SHLIBDEPS ON)
            set(CPACK_DEBIAN_DEV_PACKAGE_NAME "libstomptalk-dev")
            set(CPACK_DEBIAN_DEV_PACKAGE_SECTION "libdevel")
            set(CPACK_DEBIAN_DEV_PACKAGE_DEPENDS "libstomptalk2 (= ${PROJECT_VERSION})")
        endif()
    endif()

    include(CPack)
endif()
