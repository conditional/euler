# -*- coding: undecided -*-
# http://projecteuler.net/index.php?section=problems&id=48
# 手抜きすぎですすみません

sum = 0
(1...1000).each do |n|
  sum += n ** n
end
p sum
