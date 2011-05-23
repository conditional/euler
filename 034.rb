# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=34
# 単純にやると遅すぎっすね
# $ time ruby 034.rb
# 40730
# real    1m48.706s
# user    1m48.470s
# sys     0m0.121s


def factorial(n)
  return 1 if n == 0
  (1..n).inject(:*)
end

def sum_of_factorial_of_digits(n)
  n.to_s.split("").inject(0){|s,e| s+factorial(e.to_i)}
end

ret = 0
limit = factorial(9)*9
#p limit
(3..limit).each do |n|
#  p n if n % 100000 == 0
  ret += n if n == sum_of_factorial_of_digits(n)
end
p ret
