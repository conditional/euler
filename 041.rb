# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=41
# 
# 8桁9桁を考えなくていいことに気付くまで時間がかかってしまった。
# あと、pandiginalの判定に桁一つ一つみてるけど、三角数で判定したほうが速いと思うたぶん。
#

require "./prime_list"

def is_pandigital?(n)
  arr = n.to_s.split("")
  (1..arr.length).all?{|d| arr.include?(d.to_s)}
end

l = prime_list(7_654_321)
l.reverse_each do |n|
  if is_pandigital?(n)
    p n
    exit
  end
end
