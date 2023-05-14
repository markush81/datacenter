#!/bin/sh
readonly FOREGROUND_BLUE='\033[0;34m'
readonly FOREGROUND_GREEN='\033[1;32m'
readonly FOREGROUND_RED='\033[0;31m'
readonly FOREGROUND_YELLOW='\033[1;33m'
readonly ATTRIBUTES_RESET='\033[0m'

failure() { printf "[${FOREGROUND_RED}✘${ATTRIBUTES_RESET}] %s" "${1}"; }
warning() { printf "[${FOREGROUND_YELLOW}w${ATTRIBUTES_RESET}] %s" "${1}"; }
info() { printf "[${FOREGROUND_BLUE}i${ATTRIBUTES_RESET}] %s" "${1}"; }
success() { printf "[${FOREGROUND_GREEN=}✔︎${ATTRIBUTES_RESET}] %s" "${1}"; }

ensure_commands() {
  for cmd in "${@}"; do
    if ! command -v "${cmd}" >/dev/null; then
      failure "missing command ${cmd}"
      exit "${FAILURE}"
    fi
  done
}
