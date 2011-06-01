# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=17

DB = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
}
DB2 = {
  20 => 'twenty',
  30 => 'thirty',
  40 => 'forty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety',
}

# 読めません。
def to_e(n)
  ret = ""
  arr = n.to_s.split("").map{|e| e.to_i}
  # 3桁の数のばあい
  if arr.length == 3
    ret << DB[arr[-3]] + "hundred"
  end

  # 2桁の部分に数字がある場合
  if arr.length >= 2 and (arr[-2] != 0 or arr[-1] != 0)
    ret << "and" if ret != "" # 3桁の場合はandをくっつける

    # 20,30,40,..etc
    if DB2[(arr[-2]*10)]
      ret << DB2[(arr[-2]*10)]
      if arr[-1] != 0
        ret << DB[arr[-1]]
      end
    else # 11,12,13,14,..etc
      ret << DB[arr[-2]*10+arr[-1]]
    end
  end

  # 1桁目
  if arr.length == 1
    ret << DB[arr[-1]]
  end
  return ret
end

buf = ["onethousand"]
(1...1000).each do |n|
  buf << to_e(n)
end
p buf.join.length
