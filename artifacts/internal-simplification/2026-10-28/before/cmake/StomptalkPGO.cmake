option(STOMPTALK_PGO_GENERATE "Instrument the library for Clang IR PGO" OFF)
set(STOMPTALK_PGO_PROFILE "" CACHE FILEPATH "Clang IR profile to use for the library")
set(STOMPTALK_PGO_ITERATIONS 500000 CACHE STRING "Training repetitions (10 frames each); 0 disables training")

if (STOMPTALK_PGO_GENERATE OR STOMPTALK_PGO_PROFILE)
    if (NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        message(FATAL_ERROR "Stomptalk PGO options require Clang")
    endif()
    if (STOMPTALK_PGO_GENERATE AND STOMPTALK_PGO_PROFILE)
        message(FATAL_ERROR "Choose PGO generation or use, not both")
    endif()
    if (STOMPTALK_BUILD_FUZZ)
        message(FATAL_ERROR "Use a separate build for fuzzing and PGO")
    endif()
    if (STOMPTALK_PGO_PROFILE AND NOT EXISTS "${STOMPTALK_PGO_PROFILE}")
        message(FATAL_ERROR "Missing profile: ${STOMPTALK_PGO_PROFILE}")
    endif()
endif()

function(stomptalk_enable_pgo target)
    if (NOT STOMPTALK_PGO_GENERATE AND NOT STOMPTALK_PGO_PROFILE)
        return()
    endif()
    # Distinct source basenames within this library; profiles survive relocation.
    # The same LLVM option is required during generation and use.
    target_compile_options(${target} PRIVATE -mllvm -static-func-full-module-prefix=false)
    if (STOMPTALK_PGO_GENERATE)
        target_compile_options(${target} PRIVATE -fprofile-generate -fprofile-update=atomic)
        # Static consumers need the runtime at final link, but not instrumentation
        # of their own sources. This also works with the minimum CMake 3.10.
        target_link_libraries(${target} PUBLIC -fprofile-generate)
    else()
        target_compile_options(${target} PRIVATE
            "-fprofile-use=${STOMPTALK_PGO_PROFILE}"
            -Werror=profile-instr-out-of-date -Werror=profile-instr-unprofiled)
    endif()
endfunction()
