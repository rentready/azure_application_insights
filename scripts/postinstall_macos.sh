#!/bin/sh

set -e

echo 'Installing infrastructure libraries...' && \

brew install lcov && \
dart pub global activate coverage