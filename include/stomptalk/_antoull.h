#ifndef stomptalk_antoull_h
#define stomptalk_antoull_h

#include "stomptalk/type.h"

#ifdef __cplusplus
extern "C" {
#endif

// text MUST! contain unsigned integer
// it mostly used for content-length
// does not working with negative numbers
// return UNSIGNED result as SIGNED value;
// if result < 0 then parse error;
STOMPTALK_EXPORT
int64_t stomptalk_antoull(const char *text, size_t len);

// if fail - return 0
STOMPTALK_EXPORT
size_t stomptalk_antoll(int64_t *res, const char *text, size_t len);

// remove spaceses from both sides
// change len and return begin of string
STOMPTALK_EXPORT
const char* stomptalk_trim(const char *text, size_t *len);

#ifdef __cplusplus
}
#endif

#endif // stomptalk_antoull_h
