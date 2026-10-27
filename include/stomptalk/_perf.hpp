// build_msg.hpp
#pragma once

// stringize helpers
#define ST_STR1(x) #x
#define ST_STR(x)  ST_STR1(x)

// кросс-компиляторный BUILD_MSG("text")
#if defined(_MSC_VER)
  #define BUILD_MSG(txt) __pragma(message(__FILE__ "(" ST_STR(__LINE__) "): " txt))
#elif defined(__clang__)
  #define BUILD_MSG(txt) _Pragma(ST_STR(message(txt)))
#elif defined(__GNUC__)
  // у GCC лучше сработает предупреждение
  #define BUILD_MSG(txt) _Pragma(ST_STR(GCC warning txt))
#else
  #define BUILD_MSG(txt)
#endif

// какой SIMD путь активен сейчас
#if defined(__AVX512F__)
  #define ST_SIMD_STR "AVX-512"
#elif defined(__AVX2__)
  #define ST_SIMD_STR "AVX2"
#elif defined(__SSE4_2__)
  #define ST_SIMD_STR "SSE4.2"
#elif defined(__SSE2__)
  #define ST_SIMD_STR "SSE2"
#else
  #define ST_SIMD_STR "SCALAR"
#endif

// пример использования: помести в соответствующий .cpp/ветку
// BUILD_MSG("stomptalk: compiling SIMD path = " ST_SIMD_STR);