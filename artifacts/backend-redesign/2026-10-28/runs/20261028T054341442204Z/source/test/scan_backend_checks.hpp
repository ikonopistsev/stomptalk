#pragma once

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <initializer_list>
#if defined(__unix__)
#include <sys/mman.h>
#include <unistd.h>
#endif

namespace {
inline void scan_check(bool ok) {
    if (!ok) { std::fputs("Scanner mismatch or guard setup failure\n", stderr); std::abort(); }
}
template<class Backend>
std::size_t compare_scan(const char *data, std::size_t size) {
    std::size_t checks = 0;
    for (bool literal : {false, true}) {
        scan_check((stomptalk::detail::backend::scalar::scan_header(data, data + size, true, literal) ==
            Backend::scan_header(data, data + size, true, literal)));
        scan_check((stomptalk::detail::backend::scalar::scan_header(data, data + size, false, literal) ==
            Backend::scan_header(data, data + size, false, literal)));
        checks += 2;
    }
    return checks;
}

template<class Backend>
std::size_t check_scanner_backend() {
    std::size_t checks = 0;
    char data[160];
    std::memset(data, 'a', sizeof(data));
    for (std::size_t at = 0; at < 128; ++at) {
        for (unsigned c = 0; c < 256; ++c) {
            data[at] = char(c);
            data[at + 1] = char(c ^ 1);
            checks += compare_scan<Backend>(data, sizeof(data)) + compare_scan<Backend>(data, at + 1);
        }
        data[at] = data[at + 1] = 'a';
    }
#if defined(__unix__)
    const auto page = std::size_t(sysconf(_SC_PAGESIZE));
    auto memory = static_cast<char *>(mmap(nullptr, page * 3, PROT_NONE,
        MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    scan_check(memory != MAP_FAILED);
    scan_check(mprotect(memory + page, page, PROT_READ | PROT_WRITE) == 0);
    for (std::size_t n = 0; n <= 129; ++n) {
        for (unsigned side : {0u, 1u}) {
            char *p = side ? memory + 2 * page - n : memory + page;
            std::memset(p, 'a', n);
            checks += compare_scan<Backend>(p, n);
            for (std::size_t at = 0; at < n; ++at) {
                for (char c : {'\0', '\n', '\r', ':', '\\'}) {
                    p[at] = c;
                    checks += compare_scan<Backend>(p, n);
                }
                p[at] = 'a';
            }
        }
    }
    scan_check(munmap(memory, page * 3) == 0);
#endif
    return checks;
}
} // namespace
