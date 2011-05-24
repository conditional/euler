# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=19
#
# 問題読み落として1900年から数えるものだと思っていたよorz...
#

months = [
  31, 28, 31, 30, 31, 30,
  31, 31, 30, 31, 30, 31,
]
day   = 1
ans   = 0
(1900..2000).each do |y|
  months.each_index do |mi|
    days = months[mi]
    
    if (y%4 == 0 && y%100 != 0 || y%400 == 0) && mi == 1
      days += 1 # 29
    end
    
    (1..days).each do |d|
      if d == 1 && day == 0 && y > 1900 # 1900年は対象外...
        #p [y,mi+1]
        ans += 1
      end
      if day == 6 # 土曜の次は日曜日
        day = 0
      else
        day += 1
      end
    end
  end
end
p ans
