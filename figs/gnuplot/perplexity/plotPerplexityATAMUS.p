set terminal postscript eps enhanced monochrome solid font 'Helvetica,17'
set output "perplexityAtamUS.eps";
set title "Perplexity comparisons of TM-ATAM and ATAM" font 'Helvetica, 25'
set auto x
set style data histogram 
set style histogram cluster gap 2
set style fill solid border -1 
set key top right
set boxwidth 1
set datafile separator " "
set xtic rotate by -35 scale 0
set xlabel "Region" font "Helvetica,25" offset 0,0.6
set ylabel "Perplexity" font "Helvetica,25"
#set logscale y
set bmargin 6
set key spacing 1.7
#set grid
plot 'dat.perplexityAtamUS' using ($2):xticlabels(1) title 'TM-ATAM' fs pattern 1, \
        '' using ($3):xticlabels(1) title 'ATAM' fs pattern 2
