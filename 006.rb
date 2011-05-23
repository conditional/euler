P = (1..100).map{|a| a}
sum = P.inject(0){|s,n| s+n}
p sum * sum
sum_2 = P.inject(0){|s,n| s+n*n}
p sum_2

p sum*sum - sum_2
