# Perf top-5 (self ≥1%)

## gcc16 / Os / SWAR / before

- 21.76% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 20.09% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 9.57% — `char const* stomptalk::parser::start_state<2u>(char const*, char const*)`
- 8.24% — `stomptalk::parser::publish(bool)`
- 6.11% — `stomptalk::parser::append(char const*, unsigned long)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-Os-before-2-report.stdout)

## gcc16 / Os / SWAR / after

- 21.37% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 18.51% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 10.95% — `char const* stomptalk::parser::start_state<2u>(char const*, char const*)`
- 9.12% — `stomptalk::parser::publish(bool)`
- 5.46% — `stomptalk::parser::append(char const*, unsigned long)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-Os-after-2-report.stdout)

## gcc16 / Os / SSE2 / before

- 17.53% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 14.83% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 10.03% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 9.86% — `stomptalk::parser::publish(bool)`
- 7.98% — `stomptalk::parser::append(char const*, unsigned long)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-Os-before-3-report.stdout)

## gcc16 / Os / SSE2 / after

- 17.93% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 13.60% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 10.80% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 9.96% — `stomptalk::parser::finish_value(char const*)`
- 9.09% — `stomptalk::parser::publish(bool)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-Os-after-3-report.stdout)

## gcc16 / Os / AVX2 / before

- 20.66% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 16.29% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 10.11% — `char const* stomptalk::parser::start_state<4u>(char const*, char const*)`
- 8.90% — `stomptalk::parser::publish(bool)`
- 6.44% — `stomptalk::parser::append(char const*, unsigned long)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-Os-before-4-report.stdout)

## gcc16 / Os / AVX2 / after

- 21.46% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 16.57% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 9.49% — `stomptalk::parser::publish(bool)`
- 9.22% — `char const* stomptalk::parser::start_state<4u>(char const*, char const*)`
- 6.15% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-Os-after-4-report.stdout)

## gcc16 / O2 / SWAR / before

- 26.62% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 22.11% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 12.57% — `stomptalk::parser::append(char const*, unsigned long)`
- 7.86% — `char const* stomptalk::parser::start_state<2u>(char const*, char const*)`
- 7.80% — `stomptalk::parser::publish(bool)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O2-before-2-report.stdout)

## gcc16 / O2 / SWAR / after

- 27.82% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 21.54% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 10.84% — `stomptalk::parser::append(char const*, unsigned long)`
- 7.50% — `stomptalk::parser::publish(bool)`
- 6.76% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O2-after-2-report.stdout)

## gcc16 / O2 / SSE2 / before

- 21.34% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 19.01% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 11.69% — `stomptalk::parser::append(char const*, unsigned long)`
- 10.88% — `stomptalk::parser::publish(bool)`
- 7.64% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O2-before-3-report.stdout)

## gcc16 / O2 / SSE2 / after

- 19.39% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 15.62% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 14.13% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.59% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 9.58% — `stomptalk::parser::publish(bool)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O2-after-3-report.stdout)

## gcc16 / O2 / AVX2 / before

- 21.11% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 20.49% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 10.61% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.68% — `stomptalk::parser::publish(bool)`
- 8.20% — `char const* stomptalk::parser::start_state<4u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O2-before-4-report.stdout)

## gcc16 / O2 / AVX2 / after

- 18.68% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 18.55% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 13.45% — `stomptalk::parser::append(char const*, unsigned long)`
- 10.61% — `stomptalk::parser::publish(bool)`
- 8.72% — `char const* stomptalk::parser::start_state<4u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O2-after-4-report.stdout)

## gcc16 / O3 / SWAR / before

- 25.74% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 22.48% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 10.47% — `stomptalk::parser::append(char const*, unsigned long) [clone .part.0]`
- 9.00% — `char const* stomptalk::parser::start_state<2u>(char const*, char const*)`
- 6.62% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O3-before-2-report.stdout)

## gcc16 / O3 / SWAR / after

- 29.31% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 20.63% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 9.44% — `char const* stomptalk::parser::start_state<2u>(char const*, char const*)`
- 9.07% — `stomptalk::parser::append(char const*, unsigned long) [clone .part.0]`
- 6.28% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O3-after-2-report.stdout)

## gcc16 / O3 / SSE2 / before

- 22.16% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 17.90% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 13.34% — `stomptalk::parser::append(char const*, unsigned long) [clone .part.0]`
- 9.96% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 6.87% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O3-before-3-report.stdout)

## gcc16 / O3 / SSE2 / after

- 22.32% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 21.28% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 12.84% — `stomptalk::parser::append(char const*, unsigned long) [clone .part.0]`
- 9.66% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 5.69% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O3-after-3-report.stdout)

## gcc16 / O3 / AVX2 / before

- 22.34% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 17.63% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 9.81% — `stomptalk::parser::publish(bool)`
- 9.74% — `stomptalk::parser::append(char const*, unsigned long)`
- 8.51% — `char const* stomptalk::parser::start_state<4u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O3-before-4-report.stdout)

## gcc16 / O3 / AVX2 / after

- 21.42% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 20.80% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 10.85% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.49% — `stomptalk::parser::publish(bool)`
- 7.38% — `char const* stomptalk::parser::start_state<4u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-gcc16-O3-after-4-report.stdout)

## clang23 / Os / SWAR / before

- 24.48% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 14.47% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 12.04% — `stomptalk::parser::append(char const*, unsigned long)`
- 10.53% — `stomptalk::parser::publish(bool)`
- 8.05% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-Os-before-2-report.stdout)

## clang23 / Os / SWAR / after

- 25.53% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 14.05% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 11.96% — `stomptalk::parser::publish(bool)`
- 9.92% — `stomptalk::parser::append(char const*, unsigned long)`
- 7.01% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-Os-after-2-report.stdout)

## clang23 / Os / SSE2 / before

- 18.35% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 16.14% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 12.17% — `stomptalk::parser::publish(bool)`
- 11.12% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.69% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-Os-before-3-report.stdout)

## clang23 / Os / SSE2 / after

- 19.45% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 16.01% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 13.00% — `stomptalk::parser::publish(bool)`
- 10.93% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.24% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-Os-after-3-report.stdout)

## clang23 / Os / AVX2 / before

- 21.00% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 18.45% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 10.12% — `stomptalk::parser::publish(bool)`
- 8.51% — `stomptalk::parser::append(char const*, unsigned long)`
- 7.29% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-Os-before-4-report.stdout)

## clang23 / Os / AVX2 / after

- 22.06% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 19.52% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 10.77% — `stomptalk::parser::publish(bool)`
- 9.34% — `stomptalk::parser::append(char const*, unsigned long)`
- 6.26% — `char const* stomptalk::parser::method_state<4u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-Os-after-4-report.stdout)

## clang23 / O2 / SWAR / before

- 32.51% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 25.90% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 8.88% — `stomptalk::parser::finish_value(char const*)`
- 6.45% — `char const* stomptalk::parser::body_read_no_length<2u>(char const*, char const*)`
- 5.43% — `char const* stomptalk::parser::hdrline_done<2u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O2-before-2-report.stdout)

## clang23 / O2 / SWAR / after

- 30.76% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 29.23% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 7.97% — `char const* stomptalk::parser::body_read_no_length<2u>(char const*, char const*)`
- 7.11% — `stomptalk::parser::finish_value(char const*)`
- 6.62% — `char const* stomptalk::parser::method_state<2u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O2-after-2-report.stdout)

## clang23 / O2 / SSE2 / before

- 29.05% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 23.47% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 10.18% — `stomptalk::parser::finish_value(char const*)`
- 9.07% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`
- 7.26% — `main`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O2-before-3-report.stdout)

## clang23 / O2 / SSE2 / after

- 28.89% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 26.79% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 9.48% — `stomptalk::parser::finish_value(char const*)`
- 7.98% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`
- 7.98% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O2-after-3-report.stdout)

## clang23 / O2 / AVX2 / before

- 24.12% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 23.43% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 13.35% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.17% — `stomptalk::parser::publish(bool)`
- 6.97% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O2-before-4-report.stdout)

## clang23 / O2 / AVX2 / after

- 23.42% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 22.30% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 12.47% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.15% — `stomptalk::parser::finish_value(char const*)`
- 8.64% — `stomptalk::parser::publish(bool)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O2-after-4-report.stdout)

## clang23 / O3 / SWAR / before

- 29.92% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 28.15% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 9.28% — `stomptalk::parser::finish_value(char const*)`
- 6.32% — `char const* stomptalk::parser::method_state<2u>(char const*, char const*)`
- 5.81% — `char const* stomptalk::parser::body_read_no_length<2u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O3-before-2-report.stdout)

## clang23 / O3 / SWAR / after

- 30.93% — `char const* stomptalk::parser::hdrline_val<2u>(char const*, char const*)`
- 29.92% — `char const* stomptalk::parser::hdrline_hdr_key<2u>(char const*, char const*)`
- 8.28% — `stomptalk::parser::finish_value(char const*)`
- 6.69% — `char const* stomptalk::parser::body_read_no_length<2u>(char const*, char const*)`
- 5.82% — `char const* stomptalk::parser::method_state<2u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O3-after-2-report.stdout)

## clang23 / O3 / SSE2 / before

- 26.10% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 24.17% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 11.47% — `stomptalk::parser::finish_value(char const*)`
- 7.62% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`
- 7.23% — `main`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O3-before-3-report.stdout)

## clang23 / O3 / SSE2 / after

- 26.14% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 24.17% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 12.42% — `stomptalk::parser::finish_value(char const*)`
- 8.36% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`
- 7.79% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O3-after-3-report.stdout)

## clang23 / O3 / AVX2 / before

- 22.73% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 17.38% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 14.58% — `stomptalk::parser::append(char const*, unsigned long)`
- 8.69% — `stomptalk::parser::finish_value(char const*)`
- 7.97% — `stomptalk::parser::publish(bool)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O3-before-4-report.stdout)

## clang23 / O3 / AVX2 / after

- 26.89% — `char const* stomptalk::parser::hdrline_val<4u>(char const*, char const*)`
- 19.53% — `char const* stomptalk::parser::hdrline_hdr_key<4u>(char const*, char const*)`
- 12.11% — `stomptalk::parser::append(char const*, unsigned long)`
- 8.45% — `stomptalk::parser::publish(bool)`
- 8.32% — `stomptalk::parser::finish_value(char const*)`

[Raw report](runs/20261028T054341442204Z/profile-clang23-O3-after-4-report.stdout)

