# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=203
require "mathn"

class Integer
  def factorial
    (1..self).inject(1, :*)
  end
end

def combination(n,m)
  n.factorial / (m.factorial * (n-m).factorial)
end

def row_of_pascal_triangle(n)
  (0..n).to_a.map{|m| combination(n,m)}
end

# 指数が2以上の場合は正方因子もってる
def squarefree?(n)
  !(n.prime_division.any?{|a| a[1] >= 2})
end

arr = []
(0..50).each do |n|
  arr += row_of_pascal_triangle(n)
end

p arr.uniq.sort.inject(0){|s,n|
  if squarefree?(n)
    s + n
  else
    s
  end
}
