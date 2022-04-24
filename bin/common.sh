readonly FOREGROUND_BLUE='\033[0;34m'
readonly FOREGROUND_GREEN='\033[1;32m'
readonly FOREGROUND_RED='\033[0;31m'
readonly FOREGROUND_YELLOW='\033[1;33m'
readonly ATTRIBUTES_RESET='\033[0m'

failure() { echo -e "[${FOREGROUND_RED}✘${ATTRIBUTES_RESET}] ${1}"; }
warning() { echo -e "[${FOREGROUND_YELLOW}w${ATTRIBUTES_RESET}] ${1}"; }
info() { echo -e "[${FOREGROUND_BLUE}i${ATTRIBUTES_RESET}] ${1}"; }
success() { echo -e "[${FOREGROUND_GREEN=}✔︎${ATTRIBUTES_RESET}] ${1}"; }

function ensure_commands() {
  local cmd
  for cmd in "${@}"; do
    if ! command -v "${cmd}" >/dev/null; then
      failure "missing command ${cmd}"
      exit "${FAILURE}"
    fi
  done
}
