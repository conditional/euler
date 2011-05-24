# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=112
# 特にコメントなし。30秒くらい。

def bouncy?(n)
  return false if n < 101
  d = n.to_s.split("").map {|e| e.to_i}
  inc = false
  dec = false
  (0...d.length-1).each do |i|
    dec = true if d[i] > d[i+1]
    inc = true if d[i] < d[i+1]
    return true if inc && dec
  end
  return false
end

bouncy = 0
n = 0
begin
  n += 1
  bouncy += 1 if bouncy?(n)
  #if n % 100000 == 0
  #  p n
  #  p (bouncy/n.to_f)
  #end
  #p n if (bouncy.to_f/n.to_f) == 0.9
  #p n if (bouncy.to_f/n.to_f) == 0.5
end while (bouncy/n.to_f) < 0.99
p n
