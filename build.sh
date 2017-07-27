#!/bin/bash
mkdir -p /dist
for MD in *.md
do
  NAME=`basename $MD .md`
  pandoc -V linestretch=1.25 \
       -V fontsize=12pt \
       -V documentclass=article \
       -V margin-left=1in \
       -V margin-right=1in \
       $MD -o /dist/$NAME.pdf
done
