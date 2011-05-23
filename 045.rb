# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=45
# 100000個でいいのか微妙だけど解けたからよし

class Array
  def to_hash
    ret = {}
    self.each do |e|
      ret[e] = true
    end
    ret
  end
end

def gen_H(n)
  (1..n).map{|e| e*(2*e-1)}
end

def gen_P(n)
  (1..n).map{|e| e*(3*e-1)/2}
end

def gen_T(n)
  (1..n).map{|e| e*(e+1)/2}
end

LIM = 100000
P = gen_P(LIM).to_hash
T = gen_T(LIM).to_hash

gen_H(LIM).each do |h|
  p h if P[h] && T[h] && h > 40755
end
