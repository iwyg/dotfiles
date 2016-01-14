#!/usr/bin/env sh

set -e

if [[ `type message 2>/dev/null; echo $?` ]]; then
    exit
fi

warn() {
    printf "\e[33mWARNING:\e[m %-6s\n" "$1"  >&2
}

error() {
    printf "\e[31mERROR:\e[m %-6s\n" "$1" >&2
}

message() {
    printf "\e[0;34m%-6s\e[m\n" "$1" >&2
}

task() {
    printf "%-6s\n" "$1" >&2
}
