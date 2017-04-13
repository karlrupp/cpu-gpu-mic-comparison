#!/bin/bash

# Generate eps from Gnuplot. This gives nicer figures than using the png terminal in Gnuplot directly):
for f in `ls *.gnuplot`
do
  gnuplot $f;
done;

while :
do
    case "$1" in
      -v | --pdf)
		  if hash epstopdf 2>/dev/null; then
		  	for f in `ls *.eps`
		  	do
		  	  epstopdf $f;
		  	  rm $f
		  	done;
		  else
		  	echo "No epstopdf, please install it. It should come with a LaTeX distribution."
          fi
          shift
          ;;
      -b | --png)
		  if hash convert 2>/dev/null; then
		  	for f in `ls *.eps`
		  	do
		  	  convert -density 200 $f -flatten ${f%eps}png;
		  	  rm $f
		  	done;
		  else
		  	echo "Please install ImageMagick!"
          fi
          shift
          ;;
      -h | --help)
          echo "Usage: $0 [option]"
          echo ""
          echo "   -v, --pdf      Convert Gnuplot .eps files to PDF"
          echo "   -b, --png      Convert Gnuplot .eps files to PNG"
          exit 0
          ;;
      -*)
          echo "Error: Unknown option: $1" >&2
          ## or call function display_help
          exit 1 
          ;;
      *)  # No more options
          break
          ;;
    esac
done
