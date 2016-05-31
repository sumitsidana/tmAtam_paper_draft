set terminal postscript eps enhanced monochrome font 'Helvetica,18'
set output "bhattacharyadistance.eps";
#set title "Variation of dissimilarity in ailment distribution\n of consecutive time periods" font 'Helvetica, 25'
set auto x
set style fill solid noborder
set key top right
set boxwidth 0.9
set datafile separator ","
set xtic rotate by -45 scale 0
set xlabel "Months" font "Helvetica,25"
set ylabel "Dissimilarity" font "Helvetica,25"
#set grid
#set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
#set style line 2 lc rgb '#B23611' lt 1 lw 2 pt 7 ps 1.5   # --- red
#set style line 3 lc rgb '#59B251' lt 1 lw 2 pt 7 ps 1.5   # --- green
set log y
plot 'dat.motivate' using ($2):xticlabels(1) title 'Kuala Lumpur' with linespoints ls 1,\
        '' using ($3):xticlabels(1) title 'Oklahoma' with linespoints ls 2, \
        '' using ($4):xticlabels(1) title 'Bristol' with linespoints ls 3
