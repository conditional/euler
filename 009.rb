# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=9
# 条件そのまま書き下しただけ

(1..1000).each do |a|
  (a+1..1000).each do |b|
    c = 1000 - a - b
    if a*a + b*b == c*c
      puts a * b * c
      puts a,b,c
      exit
    end
  end
end
