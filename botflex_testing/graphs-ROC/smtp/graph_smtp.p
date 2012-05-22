set title "ROC curve for number of SMTP connections in BotFlex"
set xlabel "Number of misses (FP)"
set ylabel "Number of detections (TP)"
set yrange[0.0:10.0]
set xrange[0.0:10.0]
set grid
set terminal png font "/Library/Fonts/Times New Roman.ttf, 11"
set output "smtp.png" 

plot "n_smtp.txt" using 3:2 title "Number of SMTP queries (BotFlex)" with linespoints lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5,"n_stats_smtp_bh.txt" using 3:2 title "SMTP-based detections (BotHunter)" with linespoints lc rgb 'red' lt 1 lw 2 pt 7 ps 1.5  
 

# ------------------------------------------------------------------------------------------------------------------------------------
#"scan_addr_c_ob.txt" using 3:2 title "Outbound critical address scan threshold" with linespoints lc rgb 'green' lt 1 lw 2 pt 7 ps 1.5
# yoffset = 0.02
# plot "smtp.txt" using 2:3 with linespoints lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5, "smtp.txt" u 2:($3+yoffset):1 with labels 

