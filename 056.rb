# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=56
# コメントなし。

def digit_sum(n)
  n.to_s.split("").map{|e|e.to_i}.inject(:+)
end

max = 0
(1...100).each do |a|
  (1...100).each do |b|
    sum = digit_sum(a**b)
    if max < sum
      max = sum
    end
  end
end
p max
