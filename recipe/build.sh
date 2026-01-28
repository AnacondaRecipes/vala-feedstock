#!/bin/bash

set -exuo pipefail

PKG_CONFIG=$BUILD_PREFIX/bin/pkg-config VALAC=/no-valac ./configure --prefix=${PREFIX} || (cat config.log; exit 1)
make -j${CPU_COUNT}
make install

