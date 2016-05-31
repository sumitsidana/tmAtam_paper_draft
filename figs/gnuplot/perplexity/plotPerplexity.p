set terminal postscript eps enhanced monochrome solid font 'Helvetica,14'
set size 1.2,0.7
set output "perplexity.eps";
set title "Empirical comparison of TM-ATAM, TM-LDA, ATAM and LDA." font 'Helvetica, 17'
set auto x
set style data histogram 
set style histogram cluster gap 2
set style fill solid border -1 
set key top right
#set boxwidth 2
set datafile separator " "
set xtic rotate by -35 scale 0
set xlabel "Region" font "Helvetica,17" offset 0,0.6
set ylabel "Perplexity" font "Helvetica,17" offset 2,0.2
set logscale y
set bmargin 6
set key spacing 1.7
#set grid
plot 'dat.perplexity' using ($4):xticlabels(1) title 'ATAM' fs pattern 3, \
	'' using ($2):xticlabels(1) title 'TM-ATAM' fs pattern 1, \
        '' using ($3):xticlabels(1) title 'TM-LDA' fs pattern 2, \
	'' using ($5):xticlabels(1) title 'LDA' fs pattern 4

