## CPU-GPU-MIC Comparison Charts

This is the data repository supplementing my blog post comparing hardware characteristics of CPUs, GPUs, and MICs:
https://www.karlrupp.net/2013/06/cpu-gpu-and-mic-hardware-characteristics-over-time/

### Replot the Figures: 

 - Linux, MacOS: Run `build.sh` from your terminal (Gnuplot is required) – `./build.sh`. EPS figures are generated.
   * Call `./build.sh --png` to convert the EPS figures into PNG pictures. ImageMagick needs to be installed for this.
   * Call `./build.sh --pdf` to convert the EPS figures into PDF graphics. `epstopdf` (from a LaTeX installation) is used for this.
 
 - Windows: Install gnuplot, then load the *.gnuplot files to recreate the figures (untested). You may need to install postscript or change the Gnuplot terminal to png.

### License

CC BY 4.0. See file LICENSE.txt for details.

