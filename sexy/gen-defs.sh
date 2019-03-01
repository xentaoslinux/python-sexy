#!/bin/sh

LIBSEXYDIR="../../libsexy/libsexy"
python `pkg-config pygtk-2.0 --variable=codegendir`/h2def.py \
$LIBSEXYDIR/{sexy-icon-entry.h,sexy-spell-entry.h,sexy-url-label.h,sexy-tooltip.h,sexy-tree-view.h} \
> sexy.defs

