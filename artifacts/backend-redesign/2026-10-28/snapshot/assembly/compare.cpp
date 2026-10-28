#include "src/content_length.hpp"
#include <cstdint>
#include <cstring>
extern "C" __attribute__((noinline)) bool packed(const char *p) {
    return stomptalk::detail::is_content_length<STOMPTALK_BACKEND_SWAR>({p,14});
}
extern "C" __attribute__((noinline)) bool plain(const char *p) {
    return std::memcmp(p,"content-length",14)==0;
}
extern "C" __attribute__((noinline)) bool words(const char *p) {
    uint64_t a,b,x,y;
    std::memcpy(&a,p,8); std::memcpy(&b,p+6,8);
    std::memcpy(&x,"content-length",8); std::memcpy(&y,"content-length"+6,8);
    return a==x && b==y;
}
