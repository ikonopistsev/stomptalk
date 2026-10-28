# Perf: первые пять функций

SSE2, P CPU 4, 100 млн кадров/профиль, cycles:u, 997 Гц. Во всех 12 записях lost=0.
Self показывает скомпилированные границы функций: inline меняет распределение.

## clang23 Os before

| Self, % | Функция |
| --- | --- |
| 32.03 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 13.43 | stomptalk::parser::finish_value(char const*) |
| 11.98 | stomptalk::parser::publish(bool) |
| 10.53 | stomptalk::parser::append(char const*, unsigned long) |
| 6.12 | char const* stomptalk::parser::method_state<3u>(char const*, char const*) |

## clang23 Os after

| Self, % | Функция |
| --- | --- |
| 30.08 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 16.81 | stomptalk::parser::finish_value(char const*) |
| 13.16 | stomptalk::parser::publish(bool) |
| 11.80 | stomptalk::parser::append(char const*, unsigned long) |
| 7.32 | char const* stomptalk::parser::method_state<3u>(char const*, char const*) |

## clang23 O2 before

| Self, % | Функция |
| --- | --- |
| 39.52 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 25.40 | stomptalk::parser::finish_value(char const*) |
| 7.60 | char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*) |
| 6.93 | char const* stomptalk::parser::method_state<3u>(char const*, char const*) |
| 5.06 | main |

## clang23 O2 after

| Self, % | Функция |
| --- | --- |
| 36.92 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 28.03 | stomptalk::parser::finish_value(char const*) |
| 8.74 | char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*) |
| 7.27 | char const* stomptalk::parser::method_state<3u>(char const*, char const*) |
| 5.12 | main |

## clang23 O3 before

| Self, % | Функция |
| --- | --- |
| 38.59 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 23.73 | stomptalk::parser::finish_value(char const*) |
| 7.37 | char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*) |
| 6.89 | char const* stomptalk::parser::method_state<3u>(char const*, char const*) |
| 5.64 | main |

## clang23 O3 after

| Self, % | Функция |
| --- | --- |
| 38.18 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 27.09 | stomptalk::parser::finish_value(char const*) |
| 8.03 | char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*) |
| 7.21 | char const* stomptalk::parser::method_state<3u>(char const*, char const*) |
| 4.62 | main |

## gcc16 Os before

| Self, % | Функция |
| --- | --- |
| 26.45 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 12.99 | stomptalk::parser::finish_value(char const*) |
| 11.03 | char const* stomptalk::parser::start_state<3u>(char const*, char const*) |
| 10.69 | stomptalk::parser::publish(bool) |
| 6.62 | stomptalk::parser::append(char const*, unsigned long) |

## gcc16 Os after

| Self, % | Функция |
| --- | --- |
| 27.27 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 11.79 | char const* stomptalk::parser::start_state<3u>(char const*, char const*) |
| 11.37 | stomptalk::parser::finish_value(char const*) |
| 10.96 | stomptalk::parser::publish(bool) |
| 8.64 | stomptalk::parser::append(char const*, unsigned long) |

## gcc16 O2 before

| Self, % | Функция |
| --- | --- |
| 37.47 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 10.34 | stomptalk::parser::append(char const*, unsigned long) |
| 10.17 | stomptalk::parser::finish_value(char const*) |
| 9.66 | char const* stomptalk::parser::start_state<3u>(char const*, char const*) |
| 8.67 | stomptalk::parser::publish(bool) |

## gcc16 O2 after

| Self, % | Функция |
| --- | --- |
| 42.01 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 11.46 | char const* stomptalk::parser::start_state<3u>(char const*, char const*) |
| 10.93 | stomptalk::parser::publish(bool) |
| 9.27 | stomptalk::parser::finish_value(char const*) |
| 6.35 | main |

## gcc16 O3 before

| Self, % | Функция |
| --- | --- |
| 38.53 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 10.88 | stomptalk::parser::append(char const*, unsigned long) [clone .part.0] |
| 10.61 | char const* stomptalk::parser::start_state<3u>(char const*, char const*) |
| 7.79 | stomptalk::parser::finish_value(char const*) |
| 5.84 | char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*) |

## gcc16 O3 after

| Self, % | Функция |
| --- | --- |
| 44.01 | char const* stomptalk::parser::hdrline<3u>(char const*, char const*) |
| 11.56 | char const* stomptalk::parser::start_state<3u>(char const*, char const*) |
| 11.04 | char const* stomptalk::parser::frame_end<3u>(char const*, char const*) |
| 9.14 | stomptalk::parser::finish_value(char const*) |
| 5.95 | char const* stomptalk::parser::method_state<3u>(char const*, char const*) |
