# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=53
# #15 のコピペつかっただけ


class Integer
  def factorial
    (1..self).inject(1, :*)
  end
end

def combination(n,m)
  n.factorial / (m.factorial * (n-m).factorial)
end

count = 0

(1..100).each do |n|
  (1..n).each do |r|
    count += 1 if combination(n,r) > 1000000
  end
end
p count
