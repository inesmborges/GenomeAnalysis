set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Alcanivorax_jadensis_T9/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "500000" 500000, \
 "1000000" 1000000, \
 "1500000" 1500000, \
 "2000000" 2000000, \
 "2500000" 2500000, \
 "3000000" 3000000, \
 "3500000" 3500000, \
 "" 3629371 \
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
 "" 367988 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:3629371]
set yrange [1:367988]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Alcanivorax_jadensis_T9/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Alcanivorax_jadensis_T9/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
