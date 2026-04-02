#!/usr/bin/bash

while true; do
rm *.bbl *.blg *.aux
xelatex indic-site-framework
bibtex indic-site-framework
xelatex indic-site-framework
xelatex indic-site-framework
sleep 25
done
