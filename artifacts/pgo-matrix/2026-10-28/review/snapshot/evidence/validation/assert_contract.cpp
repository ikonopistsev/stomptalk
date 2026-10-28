#include "stomptalk/parser.h"
int main(int argc, char **argv) {
    if (argc == 1) return stomptalk_detect_method({nullptr, 0}) != STOMPTALK_METHOD_UNKNOWN ||
        stomptalk_detect_header({nullptr, 0}) != STOMPTALK_HEADER_UNKNOWN;
    if (argv[1][0] == 'm') (void)stomptalk_detect_method({nullptr, 4});
    else (void)stomptalk_detect_header({nullptr, 14});
    return 0;
}
