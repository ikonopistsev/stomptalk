#ifndef stomptalk_type_h
#define stomptalk_type_h

#include <stddef.h>

#if defined(_WIN32) && !defined(__MINGW32__) && \
  (!defined(_MSC_VER) || _MSC_VER<1600) && !defined(__WINE__)
#include <BaseTsd.h>
typedef __int64 int64_t;
typedef unsigned __int64 uint64_t;
#elif (defined(__sun) || defined(__sun__)) && defined(__SunOS_5_9)
#include <sys/inttypes.h>
#else
#include <stdint.h>
#endif

#ifdef STOMPTALK_STATIC
#  define STOMPTALK_EXPORT
#else
#ifdef _WIN32
#ifdef STOMPTALK_MAKEDLL
#  define STOMPTALK_EXPORT __declspec(dllexport)
#else
#  define STOMPTALK_EXPORT __declspec(dllimport)
#endif
#else
#  define STOMPTALK_EXPORT
#endif // _WIN32
#endif // STOMPTALK_STATIC

#if defined(_MSC_VER)
  #define STOMPTALK_FORCE_INLINE __forceinline
#elif defined(__GNUC__) || defined(__clang__)
  #define STOMPTALK_FORCE_INLINE inline __attribute__((always_inline))
#else
  #define STOMPTALK_FORCE_INLINE inline
#endif

#endif // stomptalk_type_h