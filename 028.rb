# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=28
# 特にコメントなし

LIMIT = 1001 * 1001

n = 1
step = 2
cnt = 0
sum = 1
begin
  4.times do |i|
    n += step
    sum += n
    #p n
  end
  step += 2
end while n < LIMIT
p sum
