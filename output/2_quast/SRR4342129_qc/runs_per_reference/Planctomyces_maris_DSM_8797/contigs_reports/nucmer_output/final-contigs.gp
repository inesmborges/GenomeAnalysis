set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Planctomyces_maris_DSM_8797/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "900000" 900000, \
 "1800000" 1800000, \
 "2700000" 2700000, \
 "3600000" 3600000, \
 "4500000" 4500000, \
 "5400000" 5400000, \
 "6300000" 6300000, \
 "7200000" 7200000, \
 "" 7777997 \
)
set ytics ( \
 "0" 0, \
 "3000" 3000, \
 "6000" 6000, \
 "9000" 9000, \
 "12000" 12000, \
 "15000" 15000, \
 "18000" 18000, \
 "21000" 21000, \
 "" 23992 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:7777997]
set yrange [1:23992]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Planctomyces_maris_DSM_8797/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Planctomyces_maris_DSM_8797/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
