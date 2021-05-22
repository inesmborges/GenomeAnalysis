set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Nitrospina_sp._SCGC_AAA288-L16/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "300000" 300000, \
 "600000" 600000, \
 "900000" 900000, \
 "1200000" 1200000, \
 "1500000" 1500000, \
 "1800000" 1800000, \
 "" 2077614 \
)
set ytics ( \
 "0" 0, \
 "4000" 4000, \
 "8000" 8000, \
 "12000" 12000, \
 "16000" 16000, \
 "20000" 20000, \
 "24000" 24000, \
 "28000" 28000, \
 "32000" 32000, \
 "" 35756 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:2077614]
set yrange [1:35756]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Nitrospina_sp._SCGC_AAA288-L16/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Nitrospina_sp._SCGC_AAA288-L16/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
