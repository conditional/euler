# -*- coding: undecided -*-
# http://projecteuler.net/index.php?section=problems&id=25
# Math.log10がBignumとれないっぽい？

class Integer
  def len
    #return 1 if self == 0
    #return Math.log10(self).ceil
    return self.to_s.length
  end
end

ans = -1
prev = 0
i = 1
while i.len < 1000
  ans += 1
  i, prev = prev, prev + i
  p prev
end

p ans
