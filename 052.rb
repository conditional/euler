# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=52
# すこしづつ整数の扱い方にも慣れてきた

require "set"

class Integer
  def digit_Set
    Set.new(self.to_s.chars)
  end
end

n = 0
begin
  n+=1
end while !(n.digit_Set == (2*n).digit_Set &&
  n.digit_Set == (3*n).digit_Set &&
  n.digit_Set == (4*n).digit_Set &&
  n.digit_Set == (5*n).digit_Set &&
  n.digit_Set == (6*n).digit_Set)
p n
