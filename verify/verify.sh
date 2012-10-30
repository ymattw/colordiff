#!/bin/bash

MD5FILE=verify.output.MD5SUMS
MD5REFERENCE=verify.output.MD5SUMS.reference
COLORDIFF=../colordiff.pl

rm -f $MD5FILE
for d in `ls *.diff`; do
    echo Testing $d
    cat $d | $COLORDIFF --verifymode > $d.output
    md5sum $d.output >> $MD5FILE
done
