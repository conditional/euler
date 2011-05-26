# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=59
#
# もしかするとO(|k|**3)じゃなくて O(3|k|) でいけるかも
# （それぞれに対してスペースをカウントする）

require "open-uri"
arr = open("http://projecteuler.net/project/cipher1.txt").read.split(",").map{|c| c.to_i}

def decrypt(chr,k)
  return (chr ^ k).chr
end

max = 0
kk = []

# スペースが多いのを鍵ってことにする
('a'..'z').each do |a|
  ('a'..'z').each do |b|
    ('a'..'z').each do |c|
      k = [a.ord,b.ord,c.ord]
      result = []
      arr.each_with_index do |c,i|
        result << decrypt(c,k[i%3])
      end
      spc = result.count{|e| e == " "}
      if spc > max
        max = spc
        kk = k
      end
    end
  end
end

result = []
arr.each_with_index do |c,i|
  result << decrypt(c,kk[i%3])
end
p result.join
p result.inject(0){|s,n| s + n.ord}
