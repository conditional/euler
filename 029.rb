# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=29
# 特にコメントなし

ret = []
(2..100).each do |a|
  (2..100).each do |b|
    ret << a**b
  end
end
p ret.uniq.length
