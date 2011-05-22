# -*- coding: undecided -*-
# http://projecteuler.net/index.php?section=problems&id=14
# 例によって全数探索
# メモ化すれば効率的になるとは思うのだけれどめんどくさかった

def f(nold)
  if nold.even?
    return nold / 2
  else
    return 3 * nold + 1
  end
end

def list(n)
  ret = [n]
  while ret.last != 1
    ret << f(ret.last)
  end
  return ret
end

h = {}
(1..1_000_000).to_a.map do |e|
  p e if e % 10000 == 0
  h[e] = list(e).length
end

p h.to_a.sort_by {|e| -e[1]}.first(10)
