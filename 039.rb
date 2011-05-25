# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=39
#
# ピタゴラスの定理にすぐ行き着かなかった・・・（汗
# 1分弱。

def count_partision(p)
  ret = []
  (1...p).each do |c|
    (1...p-c).each do |a|
      b = p - (a + c)
      ret << [a,b,c] if a**2 + b**2 == c**2
    end
  end
  return ret.length
end

#p count_partision(120)
p (1...1000).to_a.max_by {|p|
  d = count_partision(p)
}
