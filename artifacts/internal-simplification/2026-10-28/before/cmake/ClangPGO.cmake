# Run with ctest -S cmake/ClangPGO.cmake -VV; see PGO.md.
cmake_minimum_required(VERSION 3.21)
get_filename_component(CTEST_SOURCE_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)

if (NOT DEFINED PGO_OPT)
    set(PGO_OPT O3)
endif()
if (NOT PGO_OPT MATCHES "^O[23]$")
    message(FATAL_ERROR "PGO_OPT must be O2 or O3")
endif()
if (NOT DEFINED PGO_WORK)
    set(PGO_WORK "${CTEST_SOURCE_DIRECTORY}/build-pgo/${PGO_OPT}")
endif()
get_filename_component(PGO_WORK "${PGO_WORK}" ABSOLUTE)
if (NOT DEFINED PGO_JOBS)
    set(PGO_JOBS 4)
endif()
if (NOT DEFINED PGO_ITERATIONS)
    set(PGO_ITERATIONS 500000)
endif()
if (NOT DEFINED PGO_LLVM_DIR)
    find_program(pgo_clang clang REQUIRED)
    get_filename_component(PGO_LLVM_DIR "${pgo_clang}" DIRECTORY)
endif()
foreach(tool clang clang++ llvm-profdata)
    if (NOT EXISTS "${PGO_LLVM_DIR}/${tool}")
        message(FATAL_ERROR "Missing ${tool} in PGO_LLVM_DIR=${PGO_LLVM_DIR}")
    endif()
endforeach()

set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_CONFIGURATION Release)
set(CTEST_SITE local)
set(CTEST_BUILD_NAME "stomptalk-clang-${PGO_OPT}-pgo")
set(CTEST_BINARY_DIRECTORY "${PGO_WORK}/generate")
file(MAKE_DIRECTORY "${PGO_WORK}/raw")
# Only raw counters from this run may contribute; build trees can be reused.
file(GLOB old_raw "${PGO_WORK}/raw/*.profraw")
if (old_raw)
    file(REMOVE ${old_raw})
endif()
set(ENV{LLVM_PROFILE_FILE} "${PGO_WORK}/raw/%m-%p.profraw")
set(common
    "-DCMAKE_BUILD_TYPE=Release"
    "-DCMAKE_C_COMPILER=${PGO_LLVM_DIR}/clang"
    "-DCMAKE_CXX_COMPILER=${PGO_LLVM_DIR}/clang++"
    "-DCMAKE_C_FLAGS_RELEASE=-${PGO_OPT} -DNDEBUG"
    "-DCMAKE_CXX_FLAGS_RELEASE=-${PGO_OPT} -DNDEBUG"
    "-DSTOMPTALK_BUILD_TESTS=ON"
    "-DSTOMPTALK_LIBRARY_INSTALL=ON"
    "-DSTOMPTALK_PGO_ITERATIONS=${PGO_ITERATIONS}")
# Semicolon-separated CMake options, identical for generation and use.
list(APPEND common ${PGO_CMAKE_OPTIONS})
ctest_start(Experimental)
ctest_configure(OPTIONS "${common};-DSTOMPTALK_PGO_GENERATE=ON;-DSTOMPTALK_PGO_PROFILE="
    RETURN_VALUE result)
if (NOT result EQUAL 0)
    message(FATAL_ERROR "PGO generation configuration failed")
endif()
ctest_build(PARALLEL_LEVEL ${PGO_JOBS} RETURN_VALUE result NUMBER_ERRORS errors)
if (NOT result EQUAL 0 OR errors)
    message(FATAL_ERROR "PGO generation build failed")
endif()
ctest_test(PARALLEL_LEVEL 1 RETURN_VALUE result)
if (NOT result EQUAL 0)
    message(FATAL_ERROR "Instrumented tests/training failed")
endif()
if (PGO_TRAINER)
    # A user-supplied executable: build/run the server using the instrumented
    # library, then exit normally. It inherits LLVM_PROFILE_FILE.
    execute_process(COMMAND "${PGO_TRAINER}" "${PGO_WORK}/generate" "${PGO_WORK}/raw"
        RESULT_VARIABLE result)
    if (NOT result EQUAL 0)
        message(FATAL_ERROR "External PGO trainer failed: ${result}")
    endif()
endif()
file(GLOB raw "${PGO_WORK}/raw/*.profraw")
if (NOT raw)
    message(FATAL_ERROR "Training produced no .profraw files")
endif()
execute_process(COMMAND "${PGO_LLVM_DIR}/llvm-profdata" merge
    -o "${PGO_WORK}/stomptalk.profdata" ${raw} RESULT_VARIABLE result)
if (NOT result EQUAL 0)
    message(FATAL_ERROR "llvm-profdata merge failed")
endif()
unset(ENV{LLVM_PROFILE_FILE})

set(CTEST_BINARY_DIRECTORY "${PGO_WORK}/use")
ctest_start(Experimental)
ctest_configure(OPTIONS "${common};-DSTOMPTALK_PGO_GENERATE=OFF;-DSTOMPTALK_PGO_PROFILE=${PGO_WORK}/stomptalk.profdata"
    RETURN_VALUE result)
if (NOT result EQUAL 0)
    message(FATAL_ERROR "PGO use configuration failed")
endif()
ctest_build(PARALLEL_LEVEL ${PGO_JOBS} RETURN_VALUE result NUMBER_ERRORS errors)
if (NOT result EQUAL 0 OR errors)
    message(FATAL_ERROR "PGO use build failed (including stale/missing-profile diagnostics)")
endif()
ctest_test(PARALLEL_LEVEL 1 RETURN_VALUE result)
if (NOT result EQUAL 0)
    message(FATAL_ERROR "Profile-use tests failed")
endif()

execute_process(COMMAND "${PGO_LLVM_DIR}/clang++" --version
    OUTPUT_FILE "${PGO_WORK}/compiler.txt")
execute_process(COMMAND "${PGO_LLVM_DIR}/llvm-profdata" show "${PGO_WORK}/stomptalk.profdata"
    OUTPUT_FILE "${PGO_WORK}/profile.txt" RESULT_VARIABLE result)
if (NOT result EQUAL 0)
    message(FATAL_ERROR "Cannot read the merged profile")
endif()
file(GLOB_RECURSE sources RELATIVE "${CTEST_SOURCE_DIRECTORY}"
    "${CTEST_SOURCE_DIRECTORY}/src/*" "${CTEST_SOURCE_DIRECTORY}/include/*")
list(SORT sources)
file(WRITE "${PGO_WORK}/source.sha256" "")
foreach(source ${sources})
    file(SHA256 "${CTEST_SOURCE_DIRECTORY}/${source}" hash)
    file(APPEND "${PGO_WORK}/source.sha256" "${hash}  ${source}\n")
endforeach()
file(WRITE "${PGO_WORK}/options.txt" "${common}\n")
message(STATUS "PGO ready: ${PGO_WORK}/stomptalk.profdata; verified build: ${PGO_WORK}/use")
