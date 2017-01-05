#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function finish {
  popd
}

set -o errexit
set -o pipefail
set -o nounset

AS="./gas/as-new"
LD="./ld/ld-new"

if [ -n "${1:-}" ]; then
	PREFIX="$1"
	AS="${PREFIX}as"
	LD="${PREFIX}ld"
fi

echo "Testing $AS together with $LD ..."

pushd ${SCRIPT_DIR}
trap finish EXIT

${AS} -al esp32s2ulp_regrw.s -o esp32s2ulp_regrw.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_regrw.bin -A elf32-esp32ulp esp32s2ulp_regrw.elf

${AS} -al esp32s2ulp_jumpr.s -o esp32s2ulp_jumpr.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_jumpr.bin -A elf32-esp32ulp esp32s2ulp_jumpr.elf

${AS} -al esp32s2ulp_st.s -o esp32s2ulp_st.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_st.bin -A elf32-esp32ulp esp32s2ulp_st.elf

${AS} -al esp32s2ulp_i2crw.s -o esp32s2ulp_i2crw.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_i2crw.bin -A elf32-esp32ulp esp32s2ulp_i2crw.elf

${AS} -al esp32s2ulp_wait.s -o esp32s2ulp_wait.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_wait.bin -A elf32-esp32ulp esp32s2ulp_wait.elf

${AS} -al esp32s2ulp_adc.s -o esp32s2ulp_adc.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_adc.bin -A elf32-esp32ulp esp32s2ulp_adc.elf

${AS} -al esp32s2ulp_alu.s -o esp32s2ulp_alu.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_alu.bin -A elf32-esp32ulp esp32s2ulp_alu.elf

${AS} -al esp32s2ulp_jump.s -o esp32s2ulp_jump.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_jump.bin -A elf32-esp32ulp esp32s2ulp_jump.elf

${AS} -al esp32s2ulp_wakehalt.s -o esp32s2ulp_wakehalt.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_wakehalt.bin -A elf32-esp32ulp esp32s2ulp_wakehalt.elf

${AS} -al esp32s2ulp_tsens.s -o esp32s2ulp_tsens.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_tsens.bin -A elf32-esp32ulp esp32s2ulp_tsens.elf

${AS} -al esp32s2ulp_ld.s -o esp32s2ulp_ld.elf --mcpu=esp32s2
${LD} -o compare/esp32s2ulp_ld.bin -A elf32-esp32ulp esp32s2ulp_ld.elf
