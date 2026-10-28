#pragma once

#include "../src/is_header.hpp"
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <utility>
#include <initializer_list>
#if defined(__unix__)
#include <sys/mman.h>
#include <unistd.h>
#endif

namespace {

inline void name_check(bool ok, std::size_t size, std::size_t offset)
{
    if (!ok)
    {
        std::fprintf(stderr, "name backend: size=%zu offset=%zu\n", size, offset);
        std::abort();
    }
}

template<class Backend, std::size_t Size>
std::size_t check_name_size(char* page, std::size_t page_size)
{
    char expected[Size + 1]{};
    char storage[Size + 32]{};
    for (std::size_t i = 0; i < Size; ++i)
        expected[i] = static_cast<char>(i * 37 + 11);

    std::size_t checks = 0;
    for (std::size_t offset = 0; offset < 32; ++offset)
    {
        char* data = storage + offset;
        std::memcpy(data, expected, Size);
        name_check(Backend::template equal<Size>(data, expected), Size, offset);
        ++checks;
        for (std::size_t i = 0; i < Size; ++i)
        {
            for (unsigned bit : {1u, 128u})
            {
                data[i] = static_cast<char>(static_cast<unsigned char>(expected[i]) ^ bit);
                name_check(!Backend::template equal<Size>(data, expected), Size, offset);
                ++checks;
            }
            data[i] = expected[i];
        }
    }

    if (page)
    {
        for (auto data : {page, page + page_size - Size})
        {
            std::memcpy(data, expected, Size);
            name_check(Backend::template equal<Size>(data, expected), Size, page_size);
            name_check(Backend::template equal<Size>(expected, data), Size, page_size);
            checks += 2;
            if (Size)
            {
                data[Size - 1] ^= 1;
                name_check(!Backend::template equal<Size>(data, expected), Size, page_size);
                ++checks;
            }
        }
    }
    return checks;
}

template<class Backend, std::size_t... Sizes>
std::size_t check_name_sizes(char* page, std::size_t page_size, std::index_sequence<Sizes...>)
{
    const std::size_t results[] = {check_name_size<Backend, Sizes>(page, page_size)...};
    std::size_t checks = 0;
    for (auto count : results)
        checks += count;
    return checks;
}

template<class Backend>
std::size_t check_name_backend()
{
    char* page = nullptr;
    std::size_t page_size = 0;
#if defined(__unix__)
    page_size = static_cast<std::size_t>(sysconf(_SC_PAGESIZE));
    auto mapping = static_cast<char*>(mmap(nullptr, page_size * 3, PROT_NONE,
        MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    name_check(mapping != MAP_FAILED, 0, 0);
    page = mapping + page_size;
    name_check(mprotect(page, page_size, PROT_READ | PROT_WRITE) == 0, 0, 0);
#endif
    const auto checks = check_name_sizes<Backend>(page, page_size, std::make_index_sequence<66>{}) +
        check_name_sizes<Backend>(page, page_size, std::index_sequence<97, 128, 257>{});
#if defined(__unix__)
    name_check(munmap(page - page_size, page_size * 3) == 0, 0, 0);
#endif
    return checks;
}

template<stomptalk_backend Backend>
struct header_matcher
{
    template<std::size_t Size>
    static bool equal(const char* data, const char* text)
    {
        // Exercise the runtime-length paths, including SIMD loop boundaries.
        volatile std::size_t size = Size;
        return stomptalk::detail::is_header<stomptalk::detail::backend::engine<Backend>>{}({data, size}, {text, size});
    }
};

template<stomptalk_backend Backend>
std::size_t check_header_backend()
{
    using namespace stomptalk::detail;
    auto checks = check_name_backend<header_matcher<Backend>>();
    auto check = [&](bool ok) { name_check(ok, 14, Backend); ++checks; };
    check(is_header<backend::engine<Backend>>{}({nullptr, 0}, {nullptr, 0}));
    check(!is_header<backend::engine<Backend>>{}({nullptr, 0}, {"content-length", 14}));
    check(!is_header<backend::engine<Backend>>{}({"content-length", 14}, {nullptr, 0}));
    check(!is_header<backend::engine<Backend>>{}({"content-length", 13}, {"content-length", 14}));
    const is_header<backend::engine<Backend>> match{};
    check(match({"content-length", 14}, "content-length"));
    check(!match({"content-lengtH", 14}, "content-length"));
    check(!match({"content-length", 13}, "content-length"));
    check(match({nullptr, 0}, ""));
    check(match({"a\0b", 3}, "a\0b")); // known size includes embedded NUL
    check(!match({"a\0c", 3}, "a\0b"));
    check(!is_content_length<Backend>({nullptr, 0}));
    check(!is_content_length<Backend>({"content-length?", 15}));
    check(!is_content_length<Backend>({"content-lengt", 13}));
    char storage[14 + 32];
    auto content_length = [&](char* data)
    {
        std::memcpy(data, "content-length", 14);
        check(is_content_length<Backend>({data, 14}));
        for (std::size_t i = 0; i < 14; ++i)
        {
            const char saved = data[i];
            for (unsigned bit : {1u, 128u})
            {
                data[i] = static_cast<char>(static_cast<unsigned char>(saved) ^ bit);
                check(!is_content_length<Backend>({data, 14}));
            }
            data[i] = saved;
        }
    };
    for (std::size_t offset = 0; offset < 32; ++offset)
        content_length(storage + offset);
#if defined(__unix__)
    const auto page_size = static_cast<std::size_t>(sysconf(_SC_PAGESIZE));
    auto mapping = static_cast<char*>(mmap(nullptr, page_size * 3, PROT_NONE,
        MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    check(mapping != MAP_FAILED);
    auto page = mapping + page_size;
    check(mprotect(page, page_size, PROT_READ | PROT_WRITE) == 0);
    content_length(page);
    content_length(page + page_size - 14);
    checks += check_name_size<header_matcher<Backend>, 97>(page, page_size);
    checks += check_name_size<header_matcher<Backend>, 128>(page, page_size);
    checks += check_name_size<header_matcher<Backend>, 257>(page, page_size);
    check(munmap(mapping, page_size * 3) == 0);
#endif
    return checks;
}

} // namespace
