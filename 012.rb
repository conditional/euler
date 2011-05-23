# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=12
# 最初にかいた約数かぞえあげはスケールしなかったのでググった
#
# $ time ruby 012.rb
# 76576500
# real    1m23.692s
# user    1m23.608s
# sys     0m0.057s


# don't scale for large n.
def num_of_divisors(n)
  ret = 0
  (1..n).each do |r|
    ret += 1 if n % r == 0
  end
  return ret
end

require "mathn"
def num_of_divisors(n)
  sum = 1
  n.prime_division.each do |e|
    sum *= (e[1] + 1)
  end
  sum
end

tr = 1
n = 1
begin
  n += 1
  tr += n
end while !(num_of_divisors(tr) > 500)
p tr
