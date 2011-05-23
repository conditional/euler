# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=40
# rubyの配列の仕様ですこしはまった
# [] だと文字コードが帰ってくる・

i = 1
s = ""
begin
  s << i.to_s
  i += 1
end while s.length < 1000000
p [1,10,100,1000,10000,100000,1000000].inject(1){ |prod,i| prod*=s[i-1,1].to_i }
