set xrange [0:4]
term(x, n) = x**n/n!
set samples 100
plot '+' using 1:(sum [n=0:5] term($1, n))
