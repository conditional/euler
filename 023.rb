# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=23
# $ time ruby 023.rb
# 4179871
# real    20m32.380s
# user    20m24.735s
# sys     0m4.120s
#
# なんか色々下手くそです、はい・・・
#

# http://stackoverflow.com/questions/3398159/all-divisors-of-a-given-number
# コピペったけど number = 1 のときに動かないので適当に改変
require "mathn"
def factors_of(number)
  return [1,1] if number == 1
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  divisors.sort.map{|div| [div, number / div]}
end

def abundant?(num)
  return true if factors_of(num).inject(0){|s,n| s + n[0]} > 2*num
  return false
end
LIMIT = 28123 + 1
#LIMIT = 14500

abundants = []
(12...LIMIT).each do |e|
  abundants += [e,e] if abundant?(e)
end

combi = {}
abundants.combination(2).map{|e| e[0] + e[1]}.uniq.each do |e|
  combi[e] = true
end

sum = 0
(1..LIMIT).each do |n|
  sum += n unless combi[n]
end
p sum
