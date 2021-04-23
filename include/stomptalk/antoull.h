#ifndef stomptalk_antoull_h
#define stomptalk_antoull_h

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

#ifdef __cplusplus
extern "C" {
#endif

// text MUST! contain unsigned integer
// it mostly used for content-length
// does not working with negative numbers
// return UNSIGNED result as SIGNED value;
// if result < 0 then parse error;
int64_t stomptalk_antoull(const char *text, size_t len);

// if fail - return 0
size_t stomptalk_antoll(int64_t *res, const char *text, size_t len);

// remove spaceses from both sides
// change len and return begin of string
const char* stomptalk_trim(const char *text, size_t *len);

#ifdef __cplusplus
}
#endif

#endif // stomptalk_antoull_h
