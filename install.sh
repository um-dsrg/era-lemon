#!/usr/bin/env bash

script_path="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir -p ${script_path}/build

cd ${script_path}/build && \
  cmake -DCMAKE_INSTALL_PREFIX=${HOME}/libraries/lemon .. && \
  make && \
  make install