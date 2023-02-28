#!/bin/zsh

docker exec nasm-gcc-container sh -c "cd /usr/src && make all && ./build/main"