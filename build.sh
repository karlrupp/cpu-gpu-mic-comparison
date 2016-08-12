#!/bin/bash

# Generate eps from Gnuplot. This gives nicer figures than using the png terminal in Gnuplot directly):
for f in `ls *.gnuplot`
do
  gnuplot $f;
done;


# Generate png files: (uncomment this if you don't have ImageMagick installed)
for f in `ls *.eps`
do
  convert -density 200 $f -flatten ${f%eps}png;
  rm $f
done;



