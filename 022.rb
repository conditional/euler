# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=22
# 題意をそのまま書き下しただけ

require "open-uri"

names = open("http://projecteuler.net/project/names.txt").read.gsub('"','').split(",").map{|e| e.strip}.sort

def cs(c)
  c - "A"[0] + 1
end

gsum = 0
names.each_with_index do |name,idx|
  idx += 1
  sum = 0
  name.length.times do |n|
    sum += cs(name[n])
  end
  #if name == "COLIN"
  #  p idx,sum
  #end
  gsum += idx * sum
end
p gsum
