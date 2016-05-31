set terminal postscript eps enhanced color solid font 'Helvetica,17'
set size 1,1
set output "perplexityRatio2.eps";
set style line 3 lt 12 lc rgb "black" lw 1
set title "Empirical comparison of ATAM, TM-LDA and LDA with TM-ATAM" font 'Helvetica, 20'
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
set yrange [0:2.25]
plot 'dat.perplexityRatio2' using ($4):xticlabels(1) lt rgb "grey" title 'ATAM', \
        '' using ($3):xticlabels(1)  lt rgb "black" title 'TM-LDA', \
	'' using ($5):xticlabels(1)  lt rgb "white" title 'LDA', \
    1 ls 3 title ""

