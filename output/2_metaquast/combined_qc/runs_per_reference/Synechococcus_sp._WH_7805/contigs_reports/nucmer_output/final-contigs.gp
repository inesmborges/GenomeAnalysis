set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/combined_qc/runs_per_reference/Synechococcus_sp._WH_7805/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "300000" 300000, \
 "600000" 600000, \
 "900000" 900000, \
 "1200000" 1200000, \
 "1500000" 1500000, \
 "1800000" 1800000, \
 "2100000" 2100000, \
 "2400000" 2400000, \
 "" 2627046 \
)
set ytics ( \
 "0" 0, \
 "50000" 50000, \
 "100000" 100000, \
 "150000" 150000, \
 "200000" 200000, \
 "250000" 250000, \
 "300000" 300000, \
 "350000" 350000, \
 "400000" 400000, \
 "" 403236 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:2627046]
set yrange [1:403236]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/combined_qc/runs_per_reference/Synechococcus_sp._WH_7805/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/combined_qc/runs_per_reference/Synechococcus_sp._WH_7805/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
