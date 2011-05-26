# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=81
# メモって最小値足していくだけ。
#

DATA =<<EOS
131 673 234 103 18
201 96 342 965 150
630 803 746 422 111
537 699 497 121 956
805 732 524 37 331
EOS

data = []
DATA.each_line do |l|
  data << l.split(" ").map{|e| [e.to_i,e.to_i]}
end
# ---- ↑ テスト

data = []
require "open-uri"
open("http://projecteuler.net/project/matrix.txt").each_line do |l|
  data << l.split(",").map{|e| [e.to_i,e.to_i]}
end

data.each_index do |i|
  data[i].each_index do |j|
    next if i == 0 && j == 0
    if j == 0
      data[i][j][1] += data[i-1][j][1]
    elsif i == 0
      data[i][j][1] += data[i][j-1][1]
    else
      data[i][j][1] += [data[i-1][j][1], data[i][j-1][1]].min
    end
  end
end

p (data[data.length-1][data[0].length-1][1])
