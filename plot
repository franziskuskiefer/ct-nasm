# plotting general graph
set yr [250:450]
set xr [1:30000]
set ylabel "Cycles"
set xlabel "x"
plot "numbers.txt" title "0x800000000000/x"

# plotting lower bits (small divisors)
set yr [100:450]
set xr [0:130]
set ylabel "Cycles"
set xlabel "x"
plot "numbers.txt" title "0x800000000000/x"
