# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=145
# 効率的なやりかたあれば知りたい。
# $ time ruby 145.rb
# 608720
# real    47m51.318s
# user    47m29.824s
# sys     0m3.915s

def reverse(n)
  return n.to_s.reverse.to_i
end

# つくってみたけど逆に遅くなったので使ってない
def reverse2(n)
  ret = 0
  begin
    ret *= 10 if ret > 0
    ret += n % 10
    n /= 10
  end while n > 0
  return ret
end

def all_odd?(n)
  begin
    return false if (n % 10).even?
    n /= 10
  end while n > 0
  return true
end

c = 120
(1001..10**9).each do |n|
  next if n % 10 == 0
  # odd + odd はじこうとしたけど逆に遅くなった
  #next if (n % 10).odd? && (reverse(n) % 10).odd?
  c += 1 if all_odd?(n + reverse(n))
end

p c
