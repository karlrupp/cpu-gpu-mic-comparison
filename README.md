## CPU-GPU-MIC Comparison Charts

This is the data repository supplementing my blog post comparing hardware characteristics of CPUs, GPUs, and MICs:
https://www.karlrupp.net/2013/06/cpu-gpu-and-mic-hardware-characteristics-over-time/


### Replot the Figures: 
 - Linux: Run build.sh from your terminal (assuming Gnuplot is available on your system).
   
   Requires: Gnuplot, ImageMagick.
   
   If no ImageMagick is available at your machine, comment/remove the second for-loop in build.sh
   
   If you want to have .eps plots instead of .png, comment/remove the second for-loop in build.sh
   
   To generate .pdf plots from .eps, use 'epstopdf' instead of 'convert -density 200' in the second for-loop in build.sh
   
   
 - Mac OS: Same as Linux (untested)
 
 - Windows: Install gnuplot, then load the *.gnuplot files to recreate the figures (untested). You may need to install postscript or change the Gnuplot terminal to png.

### License

CC BY 4.0. See file LICENSE.txt for details.

