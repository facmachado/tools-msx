#!/bin/bash

#
#  sdcc-msx-config.sh - MSX environment configurator for SDCC
#
#  Copyright (c) 2020 Flavio Augusto (@facmachado)
#
#  This software may be modified and distributed under the terms
#  of the MIT license. See the LICENSE file for details.
#
#  References:
#    giovannireisnunes.wordpress.com/2016/03/11/usando-o-sdcc-no-msx
#    msx.avelinoherrera.com/index_en.html
#  Special thanks for Giovanni Nunes and Avelino Herreras Morales.
#

DIR="msx"
CC=$(command -v sdcc)
ASM=$(command -v sdasz80)
URL="msx.avelinoherrera.com/sdcc_msx/"
FILES=$(                              \
  curl $URL 2>/dev/null |             \
  grep '\.[chs]"' |                   \
  cut -d\" -f2 |                      \
  grep -vE '(before|ej|hola|params)'  \
)

if test ! "$CC"; then
  echo 'Error: SDCC not installed' >&2
  exit 1
elif test ! "$FILES"; then
  echo 'Error: Library files not found' >&2
  exit 1
fi

(
  echo "Prepare folder $DIR (if needed)..."
  test ! -d $DIR && mkdir $DIR
  cd $DIR || exit 1

  for file in $FILES; do
    echo "Download $file..."
    wget -qct0 "$URL/$file" -O "$file"
  done

  wget -qct0 https://raw.githubusercontent.com/mvac7/SDCC_TEXTMODE_MSXROM_Lib/master/textmode.h

  wget -qct0 https://raw.githubusercontent.com/mvac7/SDCC_TEXTMODE_MSXROM_Lib/master/textmode_ROM.rel

  for s in *.s; do
    echo "Assemble $s..."
    $ASM -plosgff "${s:0:-2}.rel" "$s"
  done

  for c in *.c; do
    echo "Compile $c..."
    $CC -mz80 -o "${c:0:-2}.rel" "$c"
  done

  echo 'SDCC MSX environment OK'
)
