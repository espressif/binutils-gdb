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

${AS} -al i2c_wr.s -o i2c_wr.elf --mcpu=esp32
${LD} -e 0x0  -o  compare/i2c_wr.bin -A elf32-esp32ulp i2c_wr.elf

${AS} -al esp32ulp_all.s -o esp32ulp_all.elf --mcpu=esp32
${LD} -e 0x0  -o  compare/esp32ulp_all.bin -A elf32-esp32ulp esp32ulp_all.elf

${AS} -al esp32ulp_globals.s -o esp32ulp_globals.elf --mcpu=esp32
${LD} -e 0x0  -o  compare/esp32ulp_globals.bin -A elf32-esp32ulp esp32ulp_globals.elf

${AS} -al esp32ulp_ranges.s -o esp32ulp_ranges.elf --mcpu=esp32
${AS} -al esp32ulp_globals.s -o esp32ulp_globals.elf --mcpu=esp32
${LD} -e 0x0 -o  compare/esp32ulp_ranges.bin -A elf32-esp32ulp esp32ulp_ranges.elf esp32ulp_globals.elf

${AS} -al test_and.s -o test_and.elf --mcpu=esp32
${LD} -e 0x0 -o  compare/test_and.bin -A elf32-esp32ulp test_and.elf

${AS} -al test_jumpr.s -o test_jumpr.elf --mcpu=esp32
${LD} -e 0x0  -o  compare/test_jumpr.bin -A elf32-esp32ulp test_jumpr.elf

${AS} -al test_reg.s -o test_reg.elf --mcpu=esp32
${LD} -e 0x0  -o  compare/test_reg.bin -A elf32-esp32ulp test_reg.elf

${AS} -al test1.s -o test1.elf --mcpu=esp32
${LD} -e 0x0  -o  compare/test1.bin -A elf32-esp32ulp test1.elf

${AS} -al test_macro.s -o test_macro.elf --mcpu=esp32
${LD} -e 0x0  -o  compare/test_macro.bin -A elf32-esp32ulp test_macro.elf

${AS} -al esp32ulp_jumpr.s -o esp32ulp_jumpr.elf --mcpu=esp32
${LD} -o  compare/esp32ulp_jumpr.bin -A elf32-esp32ulp esp32ulp_jumpr.elf
