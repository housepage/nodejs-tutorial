#!/bin/bash


pandoc --self-contained -f markdown -t slidy -V theme:Warsaw --slide-level 2 -o presentation.html presentation.txt

scp presentation.html andgal@caparison.dreamhost.com:/home/andgal/housepage.org/public/nodejs.html

pandoc --self-contained -f markdown -t beamer -V theme:Warsaw --ascii --slide-level 2 -o presentation.tex presentation.txt

sed -i 's/utf8/utf8x/g' presentation.tex

pdflatex presentation
pdflatex presentation
