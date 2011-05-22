# -*- coding: undecided -*-
# http://projecteuler.net/index.php?section=problems&id=20
# to_s使ってるのかっこわるい

def fact(n)
  (1..n).to_a.inject(1){|f,n| f * n }
end
p (fact 100).to_s.split("").inject(0){|s,n| s+n.to_i}
