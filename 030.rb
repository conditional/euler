# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=30
# 特にコメントなし

ret = 0
# 9**5*5 = 295245 なのでそこらへんまでみればおｋ（たぶん
(2..1000000).each do |n|
  a = n.to_s.split(//).map{|e| e.to_i}
  sum = a.inject(0){|s,o| s+o**5 }
  if sum == n
    ret += n
  end
end
p ret
