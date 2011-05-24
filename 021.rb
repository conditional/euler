# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=21
# 15秒くらい。もっと速くできるとおもうけど。

def sum_of_proper_divisors(n)
  ret = 0
  (1..((n/2)+1)).each do |r|
    ret += r if n % r == 0
  end
  return ret
end

sum = 0
(1..10000).each do |a|
  b = sum_of_proper_divisors(a)
  sum += a if a == sum_of_proper_divisors(b) && a != b
end
p sum
