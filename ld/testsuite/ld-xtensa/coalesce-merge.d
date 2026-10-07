#source: coalesce-merge1.s
#source: coalesce-merge2.s
#ld: -T coalesce-merge.t
#objdump: -d
#name: literal coalescing with SEC_MERGE targets

# The literals for .LS0+8, just past the end of the first string, and
# for .LS1, the string that follows it, have the same input section
# and offset, but string merging moves "v" to the copy from
# coalesce-merge1.s at 0x2000, so they must not be coalesced.  Nor
# must the literal for the global symbol gs at the same place.  The two
# literals for .LS1 use the same symbol and still are.

#...
.*<_start>:
#...
.*l32r[ 	]+a2, 1004 .* \(200a .*
.*l32r[ 	]+a3, 1008 .* \(2000 .*
.*l32r[ 	]+a4, 1008 .* \(2000 .*
.*l32r[ 	]+a5, 100c .* \(2000 .*
#pass
