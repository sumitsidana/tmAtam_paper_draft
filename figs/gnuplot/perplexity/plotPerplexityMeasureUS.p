set terminal postscript eps enhanced monochrome solid font 'Helvetica,17'
set output "perplexityMeasureUS.eps";
set title "Variation in perplexity with distance measure" font 'Helvetica, 20'
set auto x
set style data histogram
set style histogram cluster gap 2
set style fill solid border -1
set key top right
set boxwidth 1
set datafile separator " "
set xtic rotate by -35 scale 0
set xlabel "Region" font "Helvetica,20" offset 0,0.6
set ylabel "Perplexity" font "Helvetica,20"
set logscale y
set key spacing 1.5
set bmargin 6
#set grid
plot 'dat.perplexityMeasureUS' using ($2):xticlabels(1) title 'TM-ATAM_{bhattacharya}' fs pattern 1, \
        '' using ($3):xticlabels(1) title 'TM-ATAM_{cosine}' fs pattern 2

