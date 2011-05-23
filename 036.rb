# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=36
# 特にコメントなし

cnt = 0
(1..1000000).each do |n|
  cnt += n if n.to_s == n.to_s.reverse && n.to_s(2) == n.to_s(2).reverse
end
p cnt
