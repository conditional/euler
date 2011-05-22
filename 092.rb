# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=92
# 
# メモ化再帰みたいなことしてみた。
# 
# sum_of_square_of_digit使用:
# $ time ruby 092.rb
# 8581146
# real    4m25.210s
# user    4m23.872s
# sys     0m0.246s
# 
# splitしてto_iしながら足しあわせ:
# $ time ruby 092.rb
# 8581146
# real    11m57.498s
# user    11m54.627s
# sys     0m0.929s
# 
# ちなみに
# $ ruby -v
# ruby 1.8.7 (2009-06-12 patchlevel 174) [universal-darwin10.0]
# Core i5 2.4GHz

class Integer
  def sum_of_square_of_digit
    sum = 0; n = self
    begin sum += (n % 10)**2; n /= 10 end while n > 0
    sum
  end
end

class R89
  def initialize()
    @m = {}
  end
  def reach_89?(n)
    return @m[n] if @m[n] == true || @m[n] == false
    if n == 1
      @m[n] == false
      return false
    end
    if n == 89
      @m[n] == true
      return true
    end
    #reach_89?(n.to_s.split("").inject(0){|s,n| s + n.to_i**2})
    reach_89?(n.sum_of_square_of_digit)
  end
end

r = R89.new()
ret = 0
(1..10_000_000).each do |n|
  ret += 1 if r.reach_89?(n)
end

p ret
