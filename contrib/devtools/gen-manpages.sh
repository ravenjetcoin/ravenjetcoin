#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

MARLIND=${MARLIND:-$SRCDIR/marlind}
MARLINCLI=${MARLINCLI:-$SRCDIR/marlin-cli}
MARLINTX=${MARLINTX:-$SRCDIR/marlin-tx}
MARLINQT=${MARLINQT:-$SRCDIR/qt/marlin-qt}

[ ! -x $MARLIND ] && echo "$MARLIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
MRLVER=($($MARLINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for marlind if --version-string is not set,
# but has different outcomes for marlin-qt and marlin-cli.
echo "[COPYRIGHT]" > footer.h2m
$MARLIND --version | sed -n '1!p' >> footer.h2m

for cmd in $MARLIND $MARLINCLI $MARLINTX $MARLINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${MRLVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${MRLVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
