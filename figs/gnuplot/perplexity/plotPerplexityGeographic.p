set terminal postscript eps enhanced monochrome solid font 'Helvetica,20'
set size 0.95,0.5
set output "perplexityGeographic.eps";
set title "Variation in perplexity per word with spatial granularity" font 'Helvetica, 20'
set auto x
set style data histogram
set style histogram cluster gap 2
set style fill solid border -1
set key top left 
#set key offset 
set key font ",20"
set boxwidth 1
set datafile separator " "
#set xtic rotate by -35 scale 0
set xlabel "Spatial Granularity" font "Helvetica,20"
set ylabel "Perplexity" font "Helvetica,20"
set logscale y
#set bmargin 4
#set grid
plot 'dat.perplexitySpatial' using ($3):xticlabels(1) title 'TM-ATAM' fs pattern 1

