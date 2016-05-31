set terminal postscript eps enhanced monochrome solid font 'Helvetica,14'
set size 1.2,0.7
set output "perplexityRatio.eps";
set title "Empirical comparison of ATAM, TM-LDA and LDA with TM-ATAM" font 'Helvetica, 17'
set auto x
set style data histogram 
set style histogram cluster gap 2
set style fill solid border -1 
set key top left
#set boxwidth 2
set datafile separator " "
set xtic rotate by -35 scale 0
set xlabel "Region" font "Helvetica,17" offset 0,0.6
set ylabel "Perplexity" font "Helvetica,17" offset 2,0.2
set bmargin 6
set key spacing 1.7
#set grid
plot 'dat.perplexityRatio' using ($4/$2):xticlabels(1) title 'ATAM' fs pattern 3, \
        '' using ($3/$2):xticlabels(1) title 'TM-LDA' fs pattern 2, \
	'' using ($5/$2):xticlabels(1) title 'LDA' fs pattern 4

