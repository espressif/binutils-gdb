#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

${SCRIPT_DIR}/check_as.sh "$@"
${SCRIPT_DIR}/check_as_ld.sh "$@"
