set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Thalassospira_xiamenensis_M-5___DSM_17429/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "600000" 600000, \
 "1200000" 1200000, \
 "1800000" 1800000, \
 "2400000" 2400000, \
 "3000000" 3000000, \
 "3600000" 3600000, \
 "4200000" 4200000, \
 "" 4768950 \
)
set ytics ( \
 "0" 0, \
 "400" 400, \
 "800" 800, \
 "1200" 1200, \
 "1600" 1600, \
 "2000" 2000, \
 "2400" 2400, \
 "2800" 2800, \
 "3200" 3200, \
 "" 3421 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4768950]
set yrange [1:3421]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Thalassospira_xiamenensis_M-5___DSM_17429/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Thalassospira_xiamenensis_M-5___DSM_17429/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
