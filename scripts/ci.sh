#!/bin/bash

set -x
set -e

make
make test
cargo clippy -- -D clippy::all || true
cargo fmt -- --check || true
