#include "../src/parser_dispatch.hpp"
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <initializer_list>
#if defined(__unix__)
#include <sys/mman.h>
#include <unistd.h>
#endif

#if STOMPTALK_PARSER_AVX2
#include "../src/backend/scan_avx2.hpp"
namespace {
void require(bool ok) {
    if (!ok) { std::fputs("AVX2 scanner mismatch or guard setup failure\n", stderr); std::abort(); }
}
__attribute__((target("avx2")))
std::size_t compare(const char *data, std::size_t size) {
    std::size_t checks = 0;
    for (bool literal : {false, true}) {
        require((stomptalk::detail::scan_header<STOMPTALK_BACKEND_SCALAR, true>(data, data + size, literal) ==
            stomptalk::detail::header_scanner<STOMPTALK_BACKEND_AVX2>::scan<true>(data, data + size, literal)));
        require((stomptalk::detail::scan_header<STOMPTALK_BACKEND_SCALAR, false>(data, data + size, literal) ==
            stomptalk::detail::header_scanner<STOMPTALK_BACKEND_AVX2>::scan<false>(data, data + size, literal)));
        checks += 2;
    }
    return checks;
}
}
std::size_t check_avx2_scanner() {
    std::size_t checks = 0;
    char data[160];
    std::memset(data, 'a', sizeof(data));
    for (std::size_t at = 0; at < 128; ++at) {
        for (unsigned c = 0; c < 256; ++c) {
            data[at] = char(c);
            data[at + 1] = char(c ^ 1);
            checks += compare(data, sizeof(data)) + compare(data, at + 1);
        }
        data[at] = data[at + 1] = 'a';
    }
#if defined(__unix__)
    const auto page = std::size_t(sysconf(_SC_PAGESIZE));
    auto memory = static_cast<char *>(mmap(nullptr, page * 3, PROT_NONE,
        MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    require(memory != MAP_FAILED);
    require(mprotect(memory + page, page, PROT_READ | PROT_WRITE) == 0);
    for (std::size_t n = 0; n <= 129; ++n) {
        for (unsigned side : {0u, 1u}) {
            char *p = side ? memory + 2 * page - n : memory + page;
            std::memset(p, 'a', n);
            checks += compare(p, n);
            for (std::size_t at = 0; at < n; ++at) {
                for (char c : {'\0', '\n', '\r', ':', '\\'}) {
                    p[at] = c;
                    checks += compare(p, n);
                }
                p[at] = 'a';
            }
        }
    }
    require(munmap(memory, page * 3) == 0);
#endif
    return checks;
}
#else
std::size_t check_avx2_scanner() { return 0; }
#endif
