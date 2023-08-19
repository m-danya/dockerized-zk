#!/bin/bash
# pass extra arguments (like `--no-cache` to rerun `apt update`) with $@
# pass UID and GID from host to avoid permission issues with bind mount:
docker build \
    $@ \
    -t vim-zk \
    . \
    --build-arg UID=$(id -u) \
    --build-arg GID=$(id -g)
