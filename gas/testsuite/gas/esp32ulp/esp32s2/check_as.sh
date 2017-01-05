#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


set -o errexit
set -o pipefail
set -o nounset

AS="./gas/as-new"

if [ -n "${1:-}" ]; then
	PREFIX="$1"
	AS="${PREFIX}as"
fi

echo "Testing $AS ..."
pushd ${SCRIPT_DIR}
trap finish EXIT

${AS} -al esp32s2ulp_st.s > compare/esp32s2ulp_st.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_regrw.s > compare/esp32s2ulp_regrw.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_i2crw.s > compare/esp32s2ulp_i2crw.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_wait.s > compare/esp32s2ulp_wait.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_adc.s > compare/esp32s2ulp_adc.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_alu.s > compare/esp32s2ulp_alu.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_jump.s > compare/esp32s2ulp_jump.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_jumpr.s > compare/esp32s2ulp_jumpr.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_wakehalt.s > compare/esp32s2ulp_wakehalt.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_tsens.s > compare/esp32s2ulp_tsens.lst --mcpu=esp32s2
${AS} -al esp32s2ulp_ld.s > compare/esp32s2ulp_ld.lst --mcpu=esp32s2
