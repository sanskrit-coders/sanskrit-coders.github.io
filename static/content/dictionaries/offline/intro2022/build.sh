#!/usr/bin/bash

while true; do
rm *.bbl *.blg *.aux
xelatex dict-distribution
bibtex dict-distribution
xelatex dict-distribution
xelatex dict-distribution
sleep 25
done
