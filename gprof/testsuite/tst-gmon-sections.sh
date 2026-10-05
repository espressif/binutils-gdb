#!/bin/sh
# gprof must read an executable whose code is not in a .text section.
# Copyright (C) 2026 Free Software Foundation, Inc.
#
# This file is part of GNU Binutils.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.

# Invoked from the testsuite Makefile as:
#   tst-gmon-sections.sh GPROF CC srcdir
# Automake also runs this file with no arguments; that is a no-op.

GPROF="$1"
if test -z "$GPROF"; then
  exit 0
fi

CC="$2"
srcdir="$3"
if test -z "$CC"; then
  CC=cc
fi
if test -z "$srcdir"; then
  srcdir=.
fi

elf=tst-gmon-sections
gmon=tst-gmon-sections.gmon
out=tst-gmon-sections.prof
err=tst-gmon-sections.err
syms=tst-gmon-sections.syms

fail () {
  echo "FAIL: $*" >&2
  if test -s "$err"; then
    cat "$err" >&2
  fi
  exit 1
}

# The host toolchain cannot build the test image; gprof is not at fault.
unsupported () {
  echo "UNSUPPORTED: $*"
  exit 0
}

rm -f "$elf" "$gmon" "$out" "$err" "$syms"

"$CC" -nostdlib -nostartfiles -ffreestanding -ffunction-sections \
  -fno-pie -fno-asynchronous-unwind-tables -fno-ident -fno-stack-protector \
  -Wl,-no-pie -Wl,--build-id=none \
  -Wl,-T,"$srcdir/tst-gmon-sections.ld" -Wl,-e,code_one \
  -o "$elf" "$srcdir/tst-gmon-sections.c" 2>"$err" \
  || unsupported "could not link test executable"

magic=$(od -An -t u1 -N 4 "$elf" | tr -s " \n" " ")
class=$(od -An -t u1 -j 4 -N 1 "$elf" | tr -d " \n")
data=$(od -An -t u1 -j 5 -N 1 "$elf" | tr -d " \n")
# EI_CLASS: 1 = ELF32, 2 = ELF64.  EI_DATA: 1 = little, 2 = big.
if test "$magic" != " 127 69 76 70 "; then
  unsupported "host does not produce ELF"
fi
if test "$class" != 1 && test "$class" != 2; then
  unsupported "unrecognized ELF class $class"
fi
if test "$data" != 1 && test "$data" != 2; then
  unsupported "unrecognized ELF endianness $data"
fi

if readelf -S -W "$elf" | grep -E '\] \.text[[:space:]]' >/dev/null; then
  fail "link produced a .text section"
fi
for sec in .code.one .code.two .code.gap .code.end .code.stub; do
  if ! readelf -S -W "$elf" | grep -F "] $sec" >/dev/null; then
    fail "missing section $sec"
  fi
done

# nm -P: name type value size.  Histogram windows are one UNIT wide,
# so symbol size is not needed and every record shares hist_scale.
eval "$(nm -P "$elf" | awk '
  $2 ~ /^[Tt]$/ && $1 ~ /^_?code_one$/ {
    print "one_name=" $1
    print "one_addr=0x" $3
  }
  $2 ~ /^[Tt]$/ && $1 ~ /^_?code_two$/ {
    print "two_name=" $1
    print "two_addr=0x" $3
  }
  $2 ~ /^[Tt]$/ && $1 ~ /^_?code_end$/ {
    print "end_name=" $1
    print "end_addr=0x" $3
  }
')"

# Function descriptor ABIs (e.g. ppc64 ELFv1) do not mark entries T.
if test -z "$one_addr" || test -z "$two_addr" || test -z "$end_addr"; then
  unsupported "code_one/code_two/code_end are not text symbols"
fi

: > "$gmon"
put_byte () {
  printf "\\$(printf '%03o' "$1")" >> "$gmon"
}
put_u32 () {
  n=$1
  if test "$data" = 1; then
    put_byte $((n & 255))
    put_byte $(((n >> 8) & 255))
    put_byte $(((n >> 16) & 255))
    put_byte $(((n >> 24) & 255))
  else
    put_byte $(((n >> 24) & 255))
    put_byte $(((n >> 16) & 255))
    put_byte $(((n >> 8) & 255))
    put_byte $((n & 255))
  fi
}
put_u16 () {
  n=$1
  if test "$data" = 1; then
    put_byte $((n & 255))
    put_byte $(((n >> 8) & 255))
  else
    put_byte $(((n >> 8) & 255))
    put_byte $((n & 255))
  fi
}
put_vma () {
  if test "$class" = 2 && test "$data" != 1; then
    put_u32 0
  fi
  put_u32 "$1"
  if test "$class" = 2 && test "$data" = 1; then
    put_u32 0
  fi
}
write_hist () {
  low=$1
  high=$2
  count=$3
  put_byte 0
  put_vma "$low"
  put_vma "$high"
  put_u32 1
  put_u32 100
  printf 'seconds' >> "$gmon"
  i=0
  while test "$i" -lt 8; do
    put_byte 0
    i=$((i + 1))
  done
  printf 's' >> "$gmon"
  put_u16 "$count"
}

# gmon header: magic, version 1, 12 spare bytes.
printf 'gmon' > "$gmon"
put_u32 1
i=0
while test "$i" -lt 12; do
  put_byte 0
  i=$((i + 1))
done

one_addr=$((one_addr))
two_addr=$((two_addr))
end_addr=$((end_addr))

# Two hits in code_one, one in code_two, and one in code_end.  The
# symbol-less sections between code_two and code_end and above code_end
# get one hit each; neither may be credited to the symbol below it.
# Each window is sizeof(UNIT) bytes so the scales match.
write_hist "$one_addr" $((one_addr + 2)) 2
write_hist "$two_addr" $((two_addr + 2)) 1
write_hist 0x28000 $((0x28000 + 2)) 1
write_hist "$end_addr" $((end_addr + 2)) 1
write_hist 0x40000 $((0x40000 + 2)) 1

check_profile () {
  awk -v one="$one_name" -v two="$two_name" -v end="$end_name" '
    $NF == one { one_pct = $1; found_one = 1 }
    $NF == two { two_pct = $1; found_two = 1 }
    $NF == end { end_pct = $1; found_end = 1 }
    END {
      if (!found_one || !found_two || !found_end) {
	print "missing profile entries" > "/dev/stderr"
	exit 1
      }
      if (one_pct + 0 < 30 || two_pct + 0 < 15 || end_pct + 0 < 15 \
	  || one_pct + 0 <= two_pct + 0 || one_pct + 0 <= end_pct + 0) {
	print "unexpected sample split: " one " " one_pct " " two " " two_pct " " end " " end_pct > "/dev/stderr"
	exit 1
      }
    }
  ' "$out" || fail "$1"
}

"$GPROF" -b -p "$elf" "$gmon" >"$out" 2>"$err" || fail "gprof failed"
if grep -F "can't find an executable section" "$err" >/dev/null; then
  fail "gprof did not accept a non-.text code section"
fi
check_profile "flat profile mismatch"

# Same profile with symbols read from an nm listing via -S.
nm "$elf" > "$syms" || fail "could not list symbols"
"$GPROF" -b -p -S "$syms" "$elf" "$gmon" >"$out" 2>"$err" \
  || fail "gprof -S failed"
check_profile "flat profile mismatch with -S"

echo "PASS"
