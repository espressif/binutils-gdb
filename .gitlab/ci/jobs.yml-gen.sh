#!/bin/bash

PYTHON_VERSIONS="without_python 3.8.0 3.9.0 3.10.0 3.11.0 3.12.0"
PYTHON_MACOS_AARCH64_VERSIONS="without_python 3.8.10 3.9.13 3.10.0 3.11.0 3.12.0"
MACOS_TESTS_PYTHON_VERSIONS="3.8.10 3.9.5 3.10.2"
declare -a TEST_ESP_CHIPS=(         "esp32"
                                    "esp32s2"
                                    "esp32s3"
                                    "esp")
declare -a TEST_ESP_CHIPS_ARCH=(    "xtensa"
                                    "xtensa"
                                    "xtensa"
                                    "riscv32")

ESP_ARCHITECTURES_ALL="xtensa riscv32"

MACOS_x86_64_TRIPLET="x86_64-apple-darwin14"
MACOS_AARCH64_TRIPLET="aarch64-apple-darwin21.1"
LINUX_x86_64_TRIPLET="x86_64-linux-gnu"
WIN_x86_64_TRIPLET="x86_64-w64-mingw32"

declare -a ARCHITECTURES_ARRAY=(${LINUX_x86_64_TRIPLET}
                                "i586-linux-gnu"
                                "arm-linux-gnueabi"
                                "arm-linux-gnueabihf"
                                "aarch64-linux-gnu"
                                "i686-w64-mingw32"
                                ${WIN_x86_64_TRIPLET}
                                ${MACOS_x86_64_TRIPLET}
                                ${MACOS_AARCH64_TRIPLET})

declare -a PLATFORMIO_SYSTEM_ARRAY=("\\\"linux_x86_64\\\""
                                "\\\"linux_i686\\\""
                                "[\\\"linux_armv6l\\\",\\\"linux_armv7l\\\"]"
                                "[\\\"linux_armv7l\\\",\\\"linux_armv8l\\\"]"
                                "\\\"linux_aarch64\\\""
                                "\\\"windows_x86\\\""
                                "\\\"windows_amd64\\\""
                                "\\\"darwin_x86_64\\\""
                                "\\\"darwin_arm64\\\"")


declare -a RUST_TARGET_TRIPLET_ARRAY=("x86_64-unknown-linux-gnu"
                                "i586-unknown-linux-gnu"
                                "arm-unknown-linux-gnueabi"
                                "arm-unknown-linux-gnueabihf"
                                "aarch64-unknown-linux-gnu"
                                "i686-pc-windows-gnu"
                                "x86_64-pc-windows-gnu"
                                "x86_64-apple-darwin"
                                "aarch64-apple-darwin")

# e.g. a postfix of image for "arm-linux-gnueabi" is "arm-cross".
# Note that sequence of array is important
declare -a IMAGE_POSTFIX_ARRAY=("linux-x86_64"
                                "linux-x86"
                                "linux-armel"
                                "linux-armhf"
                                "linux-arm64"
                                "win-x86"
                                "win-x86_64"
                                "macos-x86_64"
                                "macos-arm64")

ARCHITECTURES_ARRAY_LENGTH=${#ARCHITECTURES_ARRAY[@]}

test $ARCHITECTURES_ARRAY_LENGTH != ${#RUST_TARGET_TRIPLET_ARRAY[@]} && echo "Bad arrays initialization" && exit 1
test $ARCHITECTURES_ARRAY_LENGTH != ${#IMAGE_POSTFIX_ARRAY[@]} && echo "Bad arrays initialization" && exit 1
test $ARCHITECTURES_ARRAY_LENGTH != ${#PLATFORMIO_SYSTEM_ARRAY[@]} && echo "Bad arrays initialization" && exit 1

read -r -d '' build_arch_python <<-EOF
\$ARCH_TRIPLET-\$PYTHON_VERSION
  image: \$BUILD_IMAGE
      eval "echo \"$build_arch_python\""
EOF

function build_arch() {
  BUILD_ARCH_TRIPLET=$1
  IMAGE_SUFFIX=$2
  RUST_TARGET_TRIPLET=$3
  PYTHON_VERSIONS_TO_BUILD=$PYTHON_VERSIONS
  if [ "$MACOS_AARCH64_TRIPLET" = "$BUILD_ARCH_TRIPLET" ]; then
    PYTHON_VERSIONS_TO_BUILD=$PYTHON_MACOS_AARCH64_VERSIONS
  fi
  echo ""
  for ESP_CHIP_ARCH in $ESP_ARCHITECTURES_ALL; do
    echo ""
    for PYTHON_VERSION in $PYTHON_VERSIONS_TO_BUILD; do
      echo "$ESP_CHIP_ARCH-$BUILD_ARCH_TRIPLET-$PYTHON_VERSION:"
      echo "  variables:"
      echo "    BUILD_ARCH_TRIPLET: $BUILD_ARCH_TRIPLET"
      echo "    ESP_CHIP_ARCH: $ESP_CHIP_ARCH"
      echo "    PYTHON_VERSION: $PYTHON_VERSION"
      echo "    RUST_TARGET_TRIPLET: $RUST_TARGET_TRIPLET"
      echo "  image: \$CI_REGISTRY_IMAGE/gdb-build-$IMAGE_SUFFIX:latest"
      echo "  extends: .build_template"
    done;
  done;
  echo ""
  echo ""
}

function test_arch_linux() {
  BUILD_ARCH_TRIPLET=$1
  IMAGE_SUFFIX=$2
  RUNNER_TAGS=$3
  for PYTHON_VERSION in $PYTHON_VERSIONS; do
    for ((i = 0; i < ${#TEST_ESP_CHIPS[@]}; i++)); do
      ESP_CHIP=${TEST_ESP_CHIPS[$i]}
      ESP_CHIP_ARCH=${TEST_ESP_CHIPS_ARCH[$i]}
      echo ""
      echo ""
      TEST_TEMPLATE=
      if [ $ESP_CHIP == "esp32" ]; then
        TEST_TEMPLATE=".test_qemu_template"
      else
        TEST_TEMPLATE=".test_no_qemu_template"
      fi
      echo "$ESP_CHIP_ARCH-$ESP_CHIP-test-$BUILD_ARCH_TRIPLET-$PYTHON_VERSION:"
      echo "  tags: $RUNNER_TAGS"
      echo "  variables:"
      echo "    ESP_CHIP: $ESP_CHIP"
      echo "    ESP_CHIP_ARCH: $ESP_CHIP_ARCH"
      echo "    PYTHON_VERSION: $PYTHON_VERSION"
      echo "  image: \$CI_REGISTRY_IMAGE/gdb-test-dejagnu:latest"
      echo "  needs: [ $ESP_CHIP_ARCH-$BUILD_ARCH_TRIPLET-$PYTHON_VERSION ]"
      echo "  extends: $TEST_TEMPLATE"
      echo ""
    done;
  done;
}

function test_macos() {
  for PYTHON_VERSION in $MACOS_TESTS_PYTHON_VERSIONS; do
    echo ""
    echo ""
    for ((i = 0; i < ${#TEST_ESP_CHIPS[@]}; i++)); do
      ESP_CHIP=${TEST_ESP_CHIPS[$i]}
      ESP_CHIP_ARCH=${TEST_ESP_CHIPS_ARCH[$i]}
      echo "$ESP_CHIP_ARCH-$ESP_CHIP-test-macos-$PYTHON_VERSION:"
      echo "  tags: [ \"darwin\", \"amd64\" ]"
      echo "  variables:"
      echo "    ESP_CHIP: $ESP_CHIP"
      echo "    ESP_CHIP_ARCH: $ESP_CHIP_ARCH"
      echo "    TEST_PYTHON_VERSION: $PYTHON_VERSION"
      echo "  needs: [ $ESP_CHIP_ARCH-$MACOS_x86_64_TRIPLET-${PYTHON_VERSION%.*}.0 ]"
      echo "  extends: .test_macos_template"
      echo ""
    done;
  done;
}

function test_windows() {
  echo ""
  echo ""
  for ((i = 0; i < ${#TEST_ESP_CHIPS[@]}; i++)); do
    ESP_CHIP=${TEST_ESP_CHIPS[$i]}
    ESP_CHIP_ARCH=${TEST_ESP_CHIPS_ARCH[$i]}
    echo "$ESP_CHIP_ARCH-$ESP_CHIP-test-$WIN_x86_64_TRIPLET:"
    echo "  tags: [ windows, powershell ]"
    echo "  variables:"
    echo "    ESP_CHIP: $ESP_CHIP"
    echo "    ESP_CHIP_ARCH: $ESP_CHIP_ARCH"
    echo "  needs: [ $ESP_CHIP_ARCH-$WIN_x86_64_TRIPLET-without_python ]"
    echo "  extends: .test_windows_template"
    echo ""
  done;
}

function pack_output() {
  BUILD_ARCH_TRIPLET=$1
  PLATFORMIO_SYSTEM=$2
  IS_TESTED=$3
  RUNNER_TAGS=$4
  PYTHON_VERSIONS_TO_PACK=$PYTHON_VERSIONS
  if [ "$MACOS_AARCH64_TRIPLET" = "$BUILD_ARCH_TRIPLET" ]; then
    PYTHON_VERSIONS_TO_PACK=$PYTHON_MACOS_AARCH64_VERSIONS
  fi
  for ESP_CHIP_ARCH in $ESP_ARCHITECTURES_ALL; do
    echo ""
    echo "pack-$ESP_CHIP_ARCH-$BUILD_ARCH_TRIPLET:"
    echo "  variables:"
    echo "    PLATFORM_NAME: ${BUILD_ARCH_TRIPLET}"
    echo "    PLATFORMIO_SYSTEM: \"${PLATFORMIO_SYSTEM}\""
    echo "    ESP_CHIP_ARCH: ${ESP_CHIP_ARCH}"
    if [[ ${BUILD_ARCH_TRIPLET} =~ "mingw" ]]; then
      echo "    ARCHIVE_TOOL: \"zip -r\""
      echo "    ARCHIVE_EXT: \"zip\""
    else
      echo "    ARCHIVE_TOOL: \${LINUX_ARCHIVE_TOOL}"
      echo "    ARCHIVE_EXT: \${LINUX_ARCHIVE_EXT}"
    fi
    echo "  tags: $RUNNER_TAGS"
    echo "  needs:"
    for PYTHON_VERSION in $PYTHON_VERSIONS_TO_PACK; do
      echo "    - $ESP_CHIP_ARCH-$BUILD_ARCH_TRIPLET-$PYTHON_VERSION"
    done;
    echo "  extends: .pack_template"
  done;
  echo ""
  echo ""
}

read -r -d '' header <<-EOF
# DO NOT EDIT!
# THIS FILE WAS GENERATED BY .gitlab-ci.yml-gen.sh
# JUST MODIFY IT IF YOU NEED AND UPDATE WITH:
# $ ./jobs.yml-gen.sh > ./jobs.yml

include: '.gitlab/ci/gdb-test-suites.yml'
EOF

echo "$header"
echo ""


for (( i=0; i<${ARCHITECTURES_ARRAY_LENGTH}; i++ )); do
  echo "# BUILD ${ARCHITECTURES_ARRAY[$i]}"
  build_arch ${ARCHITECTURES_ARRAY[$i]} ${IMAGE_POSTFIX_ARRAY[$i]} ${RUST_TARGET_TRIPLET_ARRAY[i]}
done

echo "# TEST ${LINUX_x86_64_TRIPLET}"
test_arch_linux ${LINUX_x86_64_TRIPLET} "" "[ \"amd64\", \"build\" ]"

echo "# TEST ${MACOS_x86_64_TRIPLET}"
test_macos

echo "# TEST ${WIN_x86_64_TRIPLET}"
test_windows


for (( i=0; i<${ARCHITECTURES_ARRAY_LENGTH}; i++ )); do
  echo "# PACK GDB ${ARCHITECTURES_ARRAY[$i]}"
  IS_TESTED="n"
  if [ ${ARCHITECTURES_ARRAY[$i]} == ${LINUX_x86_64_TRIPLET} ]; then
    IS_TESTED="y"
  fi
  pack_output ${ARCHITECTURES_ARRAY[$i]} ${PLATFORMIO_SYSTEM_ARRAY[$i]} $IS_TESTED "[ \"amd64\", \"build\" ]"
done
