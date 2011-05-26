# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=74
# 
# 階乗ハードコードしたら少し早くなったけどダサい。4分くらい。
#

class Integer
  def factorial
    return 1 if self == 0
    return 5040 if self == 7
    return 40320 if self == 8
    return 362880 if self == 9
    (1..self).inject(1,:*)
  end

  def sum_of_factorial
    self.to_s.chars.inject(0){|s,n| s + n.to_i.factorial}
  end
end

def chain_of_term(n)
  h = {}
  cnt = 0
  begin
    h[n] = true
    cnt += 1
    n = n.sum_of_factorial
  end while !(h[n] == true)
  return cnt
end

#p chain_of_term(69)
#p chain_of_term(78)
#p chain_of_term(145)
p (1...1_000_000).to_a.select {|n| 
  chain_of_term(n) == 60
}.length

