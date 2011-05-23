# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=5
# もっと効率いい方法ありそうだとは思いつつ。。。
# $ time ruby 005.rb
# 232792560
# real    9m46.119s
# user    9m37.899s
# sys     0m7.875s

def evenly_divisible?(n,m)
  (2..m).each do |r|
    return false if n % r != 0
  end
  return true
end

n = 1
begin
  n += 1
end while !evenly_divisible?(n,20)
p n
