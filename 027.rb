# http://projecteuler.net/index.php?section=problems&id=27

require "mathn"

class Integer
  def prime?
    self.prime_division.size == 1 && self.prime_division[0][1] == 1
  end
  def fprime?
    return false if self <= 0
    return self.prime?
  end
end

max = 0
a_ = -1000
b_ = -1000
(-1000...1000).each do |a|
  (-1000...1000).each do |b|
    n = 0
    n += 1 until (!((n ** 2) + (a * n) + b).fprime?)
    if n > max
      max = n
      a_ = a
      b_ = b
    end
  end
end
p a_*b_
