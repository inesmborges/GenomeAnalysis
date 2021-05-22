set terminal canvas jsdir ""
set output "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Kitasatospora_mediocidica_KCTC_9733/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "1000000" 1000000, \
 "2000000" 2000000, \
 "3000000" 3000000, \
 "4000000" 4000000, \
 "5000000" 5000000, \
 "6000000" 6000000, \
 "7000000" 7000000, \
 "8000000" 8000000, \
 "" 8681761 \
)
set size 1,1
set grid
set key outside bottom right
set border 5
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "k119_160745_flag_1_multi_9.2909_len_2807" noenhanced
set format "%.0f"
set xrange [1:8681761]
set yrange [1:2807]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Kitasatospora_mediocidica_KCTC_9733/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc/runs_per_reference/Kitasatospora_mediocidica_KCTC_9733/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
