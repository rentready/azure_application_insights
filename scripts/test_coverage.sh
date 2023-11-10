#!/bin/sh

set -e

echo 'Starting test coverage...' && \

dart test --coverage=coverage && \
format_coverage --lcov --in=coverage --out=coverage/lcov.info --report-on=lib && \
lcov --remove coverage/lcov.info -o coverage/lcov-full.info --ignore-errors unused && \
genhtml coverage/lcov-full.info -o coverage && \
open coverage/index.html