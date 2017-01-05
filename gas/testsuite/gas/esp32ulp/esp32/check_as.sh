#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function finish {
  popd
}

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

${AS} -al i2c_wr.s > compare/i2c_wr.lst --mcpu=esp32
echo "i2c_wr done ..."
${AS} -al esp32ulp_all.s > compare/esp32ulp_all.lst --mcpu=esp32
echo "esp32ulp_all done ..."
${AS} -al esp32ulp_globals.s > compare/esp32ulp_globals.lst --mcpu=esp32
echo "esp32ulp_globals done ..."
${AS} -al esp32ulp_ranges.s > compare/esp32ulp_ranges.lst --mcpu=esp32
echo "esp32ulp_ranges done ..."
${AS} -al test_and.s > compare/test_and.lst --mcpu=esp32
echo "test_and done ..."
${AS} -al test_jumpr.s > compare/test_jumpr.lst --mcpu=esp32
echo "test_jumpr done ..."
${AS} -al test_reg.s > compare/test_reg.lst --mcpu=esp32
echo "test_reg done ..."
${AS} -al test1.s > compare/test1.lst --mcpu=esp32
echo "test1 done ..."
${AS} -al test_macro.s > compare/test_macro.lst --mcpu=esp32
echo "test_macro done ..."
${AS} -al esp32ulp_jumpr.s > compare/esp32ulp_jumpr.lst --mcpu=esp32
echo "esp32ulp_jumpr done ..."
