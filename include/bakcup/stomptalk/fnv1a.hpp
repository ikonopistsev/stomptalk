// Copyright © 2020 igor . ikonopistsev at gmail
// This work is free. You can redistribute it and/or modify it under the
// terms of the Do What The Fuck You Want To Public License, Version 2,
// as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

#pragma once

#include <cstring>
#include <cstddef>
#include <cstdint>
#include <atomic>
#include <type_traits>

#if defined(_MSC_VER)
  #define ST_FORCE_INLINE __forceinline
#elif defined(__GNUC__) || defined(__clang__)
  #define ST_FORCE_INLINE inline __attribute__((always_inline))
#else
  #define ST_FORCE_INLINE inline
#endif

namespace stomptalk {

struct fnv1a
{
    using type = std::uint64_t;
    static constexpr type offset = 0xcbf29ce484222325ull; // FNV-1a offset
    static constexpr type P      = 0x00000100000001B3ull; // prime


    ST_FORCE_INLINE constexpr static auto calc(char ch, type hval = offset) noexcept 
    { 
        hval ^= static_cast<type>(ch); 
    #if defined(NO_FNV_GCC_OPTIMIZATION) 
        hval *= 0x100000001b3ULL; 
    #else
        hval += (hval << 1) + (hval << 4) + (hval << 5) + (hval << 7) + (hval << 8) + (hval << 40);
    #endif
        return hval;
    }

    // === быстрый шаг умножения на PRIME (для хвостов/байтов) ===
    ST_FORCE_INLINE static type mul(type h) noexcept {
    #if defined(NO_FNV_GCC_OPTIMIZATION)
        return h * P;
    #else
        // h * 0x100000001B3 = h + h*2 + h*16 + h*32 + h*128 + h*256 + h*2^40
        return h + (h<<1) + (h<<4) + (h<<5) + (h<<7) + (h<<8) + (h<<40);
    #endif
    }

    // === одна операция "8-байтовый блок" ===
    // Формула после разворачивания:
    // h8 = h0*P^8  ^  b0*P^8 ^ b1*P^7 ^ b2*P^6 ^ b3*P^5 ^ b4*P^4 ^ b5*P^3 ^ b6*P^2 ^ b7*P^1
    // (младший байт блока считается первым)
    ST_FORCE_INLINE static void push_block8(type& h, const char* p) noexcept {
        const Tables& T = get_tables(); // 8 таблиц: P^1..P^8

        // h *= P^8  — всегда одним 64-битным умножением на константу
        h *= T.P8;

        const unsigned char b0 = (unsigned char)p[0];
        const unsigned char b1 = (unsigned char)p[1];
        const unsigned char b2 = (unsigned char)p[2];
        const unsigned char b3 = (unsigned char)p[3];
        const unsigned char b4 = (unsigned char)p[4];
        const unsigned char b5 = (unsigned char)p[5];
        const unsigned char b6 = (unsigned char)p[6];
        const unsigned char b7 = (unsigned char)p[7];

        h ^= T.pow[7][b0]  // *P^8
           ^ T.pow[6][b1]  // *P^7
           ^ T.pow[5][b2]  // *P^6
           ^ T.pow[4][b3]  // *P^5
           ^ T.pow[3][b4]  // *P^4
           ^ T.pow[2][b5]  // *P^3
           ^ T.pow[1][b6]  // *P^2
           ^ T.pow[0][b7]; // *P^1
    }

    ST_FORCE_INLINE static type calc_hash(const char* p, const char* e, type h = offset) noexcept {
        // блоки по 8 байт
        while (p + 8 <= e) {
            push_block8(h, p);
            p += 8;
        }
        // хвост < 8 — классический FNV-1a
        while (p < e) {
            h ^= (unsigned char)*p++;
            h = mul(h);
        }
        return h;
    }

    // === служебка для таблиц ===
    struct Tables {
        alignas(64) type pow[8][256]; // pow[k][b] = b * P^(k+1), k=0..7 (то есть P^1..P^8)
        type P8;                      // P^8
    };

    ST_FORCE_INLINE static const Tables& get_tables() noexcept {
        // thread-safe init (C++11): однократная инициализация
        static Tables T{};
        static std::atomic<bool> inited{false};
        if (!inited.load(std::memory_order_acquire)) {
            // посчитаем степени P^1..P^8
            type pows[9];
            pows[0] = 1;
            for (int i=1;i<=8;++i) pows[i] = pows[i-1] * P;

            for (int k=0;k<8;++k) {
                const type pk = pows[k+1]; // P^(k+1)
                for (int b=0;b<256;++b)
                    T.pow[k][b] = (type)b * pk;
            }
            T.P8 = pows[8];

            inited.store(true, std::memory_order_release);
        }
        return T;
    }
};

} // namespace stomptalk
