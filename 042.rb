# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=42
# 
# だんだん書き方が変態的になってきた。気を付けないと。
# 

require "mathn"
require "open-uri"
WORDS =  open("http://projecteuler.net/project/words.txt").read.gsub('"','').split(",")

def c2n(c)
  c - "A"[0] + 1
end

class Integer
  def is_triangle?
                                  # 整数判定ェ・・・
    ((Math.sqrt(8*self+1)-1) / 2 ).to_s.split(".").length == 1
  end
end

p WORDS.select{ |w|
  s = 0
  w.length.times do |n|
    s += c2n(w[n])
  end
  s.is_triangle?
}.length
