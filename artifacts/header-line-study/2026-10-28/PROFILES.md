# Длинные профили SSE2 / O2

## gcc16 / baseline

- 20.57% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 19.57% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 13.15% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.92% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 8.20% — `stomptalk::parser::publish(bool)`

[Raw](runs/20261028T062508203190Z/profile-gcc16-O2-baseline-3-report.stdout)

## gcc16 / wire

- 20.48% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 19.60% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 13.02% — `stomptalk::parser::append(char const*, unsigned long)`
- 9.34% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 8.73% — `stomptalk::parser::publish(bool)`

[Raw](runs/20261028T062508203190Z/profile-gcc16-O2-wire-3-report.stdout)

## gcc16 / line

- 38.00% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 10.56% — `stomptalk::parser::append(char const*, unsigned long)`
- 10.24% — `stomptalk::parser::finish_value(char const*)`
- 8.64% — `char const* stomptalk::parser::start_state<3u>(char const*, char const*)`
- 8.40% — `stomptalk::parser::publish(bool)`

[Raw](runs/20261028T062508203190Z/profile-gcc16-O2-line-3-report.stdout)

## clang23 / baseline

- 28.42% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 27.39% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 9.70% — `stomptalk::parser::finish_value(char const*)`
- 7.13% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`
- 6.81% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`

[Raw](runs/20261028T062508203190Z/profile-clang23-O2-baseline-3-report.stdout)

## clang23 / wire

- 29.22% — `char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)`
- 26.88% — `char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)`
- 9.38% — `stomptalk::parser::finish_value(char const*)`
- 7.57% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`
- 6.74% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`

[Raw](runs/20261028T062508203190Z/profile-clang23-O2-wire-3-report.stdout)

## clang23 / line

- 39.76% — `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)`
- 24.26% — `stomptalk::parser::finish_value(char const*)`
- 7.72% — `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)`
- 7.38% — `char const* stomptalk::parser::method_state<3u>(char const*, char const*)`
- 5.07% — `main`

[Raw](runs/20261028T062508203190Z/profile-clang23-O2-line-3-report.stdout)

