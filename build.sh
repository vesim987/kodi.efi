#!/usr/bin/env sh

REPO_PATH="$(dirname $(readlink -f "$0"))"
ls -la ${REPO_PATH}

echo make -C "${REPO_PATH}/buildroot" BR2_EXTERNAL="${REPO_PATH}/" O="${REPO_PATH}/output/" $*
make -C "${REPO_PATH}/buildroot" BR2_EXTERNAL="${REPO_PATH}/" O="${REPO_PATH}/output/" $*
