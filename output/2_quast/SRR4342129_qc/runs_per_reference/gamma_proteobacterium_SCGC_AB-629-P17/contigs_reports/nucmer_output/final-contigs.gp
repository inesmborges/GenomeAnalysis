set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/gamma_proteobacterium_SCGC_AB-629-P17/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "200000" 200000, \
 "400000" 400000, \
 "600000" 600000, \
 "800000" 800000, \
 "1000000" 1000000, \
 "1200000" 1200000, \
 "1400000" 1400000, \
 "" 1424092 \
)
set ytics ( \
 "0" 0, \
 "5000" 5000, \
 "10000" 10000, \
 "15000" 15000, \
 "20000" 20000, \
 "25000" 25000, \
 "30000" 30000, \
 "35000" 35000, \
 "40000" 40000, \
 "" 41647 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:1424092]
set yrange [1:41647]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/gamma_proteobacterium_SCGC_AB-629-P17/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/gamma_proteobacterium_SCGC_AB-629-P17/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
