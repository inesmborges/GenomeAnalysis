set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Syntrophus_aciditrophicus/contigs_reports/nucmer_output/final-contigs.html"
set size 1,1
set grid
set key outside bottom right
set border 5
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "k119_176646_flag_0_multi_9.9351_len_11770" noenhanced
set format "%.0f"
set xrange [1:*]
set yrange [1:11770]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Syntrophus_aciditrophicus/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc/runs_per_reference/Syntrophus_aciditrophicus/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
