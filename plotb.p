set terminal wxt
set title "Medidas de tempo de reação" font "Helvetica,16"
set xlabel "Medidas" font "Helvetica,12"
set ylabel "Tempo em segundos" font "Helvetica,12"
set grid
set yrange[0:0.5]



set output 'hist.png'
binwidth=5
bin(x,width)=width*floor(x/width
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
plot 'r.dat' using 1:5 (bin($1,binwidth)):(1.0) smooth freq with boxes pt 7 ps 1

set boxwidth 0.9 absolute
set style fill   solid 1.00 border lt -1
set key fixed right top vertical Right noreverse noenhanced autotitle nobox
set style histogram clustered gap 1 title textcolor lt -1
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
set xtics  norangelimit 
set xtics()
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ 0.00000 : 300000. ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback


unset output
