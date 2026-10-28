# Perf top-5: self ≥1%, SSE2, 100 млн кадров

## gcc16 / O2 / plain

- 38.76% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 9.73% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.55% — `stomptalk::parser::finish_value(char const*)`
- 9.50% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 9.24% — `stomptalk::parser::publish(bool)`

[Raw](runs/20261028T071754232573Z/gcc16-O2-profile-plain-report.stdout)

## gcc16 / O2 / pgo

- 36.67% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 16.68% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 11.22% — `char const* stomptalk::parser::frame_end<3u>(char const*, char const*)`
- 10.63% — `stomptalk::parser::append(char const*, unsigned long)`
- 8.11% — `stomptalk::parser::finish_value(char const*)`

[Raw](runs/20261028T071754232573Z/gcc16-O2-profile-pgo-report.stdout)

## gcc16 / O3 / plain

- 37.83% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 11.36% — `stomptalk::parser::append(char const*, unsigned long) [clone .part.0]`
- 10.27% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 7.80% — `stomptalk::parser::finish_value(char const*)`
- 5.92% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`

[Raw](runs/20261028T071754232573Z/gcc16-O3-profile-plain-report.stdout)

## gcc16 / O3 / pgo

- 45.65% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 18.88% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 8.63% — `char const* stomptalk::parser::done<3u>(char const*, char const*)`
- 8.34% — `stomptalk::parser::finish_value(char const*)`
- 6.62% — `char const* stomptalk::parser::frame_end<3u>(char const*, char const*)`

[Raw](runs/20261028T071754232573Z/gcc16-O3-profile-pgo-report.stdout)

## clang23 / O2 / plain

- 39.56% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 24.83% — `stomptalk::parser::finish_value(char const*)`
- 7.28% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`
- 6.85% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`
- 4.90% — `main`

[Raw](runs/20261028T071754232573Z/clang23-O2-profile-plain-report.stdout)

## clang23 / O2 / pgo

- 90.20% — `char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)`
- 3.74% — `main`
- 1.82% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`

[Raw](runs/20261028T071754232573Z/clang23-O2-profile-pgo-report.stdout)

## clang23 / O3 / plain

- 40.51% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 22.32% — `stomptalk::parser::finish_value(char const*)`
- 7.54% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`
- 7.01% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`
- 4.90% — `main`

[Raw](runs/20261028T071754232573Z/clang23-O3-profile-plain-report.stdout)

## clang23 / O3 / pgo

- 89.17% — `char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)`
- 4.28% — `main`
- 2.68% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`

[Raw](runs/20261028T071754232573Z/clang23-O3-profile-pgo-report.stdout)

