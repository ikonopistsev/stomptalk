/*
 * OSS-Fuzz target: number and trim helpers
 *
 * stomptalk_antoull(), stomptalk_antoll() and stomptalk_trim() are checked
 * against straightforward reference implementations:
 *   antoull: 1..18 decimal digits -> value, anything else -> negative;
 *   antoll:  optional '-' followed by the same -> 1 and the value, else 0;
 *   trim:    spaces removed on both sides, nothing left -> NULL and 0.
 * The whole input is the text.  Seed corpus lives in fuzz/corpus/numbers/.
 */

#include "stomptalk/antoull.h"

#include <stddef.h>
#include <stdint.h>

static int64_t ref_antoull(const char *text, size_t len)
{
    if ((len == 0) || (len > 18))
        return -1;
    int64_t value = 0;
    for (size_t i = 0; i < len; ++i) {
        if ((text[i] < '0') || (text[i] > '9'))
            return -1;
        value = value * 10 + (text[i] - '0');
    }
    return value;
}

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    const char *text = (const char *)data;

    const int64_t want = ref_antoull(text, size);
    const int64_t got = stomptalk_antoull(text, size);
    if ((want < 0) ? (got >= 0) : (got != want))
        __builtin_trap();

    int64_t res = 12345;
    const size_t ok = stomptalk_antoll(&res, text, size);
    const int minus = (size > 0) && (text[0] == '-');
    const int64_t abs_want = ref_antoull(text + minus, size - (size_t)minus);
    if (size == 0) {
        if (ok != 0)
            __builtin_trap();
    } else if (abs_want < 0) {
        if (ok != 0)
            __builtin_trap();
    } else {
        if ((ok != 1) || (res != (minus ? -abs_want : abs_want)))
            __builtin_trap();
    }

    size_t b = 0, e = size;
    while ((b < e) && (text[b] == ' '))
        ++b;
    while ((e > b) && (text[e - 1] == ' '))
        --e;
    size_t len = size;
    const char *trimmed = stomptalk_trim(size ? text : "", &len);
    if (b == e) {
        if ((trimmed != NULL) || (len != 0))
            __builtin_trap();
    } else {
        if ((trimmed != text + b) || (len != e - b))
            __builtin_trap();
    }
    return 0;
}
