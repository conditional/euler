# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=35
# Array#permutationの仕様がまだいまいちわかってない
# けっきょく Array#rotate つかった

require "prime_list"
require "rubygems"
require "backports"

primes = {}
prime_list(1000000).each do |n|
  primes[n] = true
end

class Array
  def gen_rotation
    ret = []
    t = self
    self.length.times do
      t = t.rotate
      ret << t
    end
    ret 
  end
end

#p [1,9,7].permutation(3).to_a
#p [1,9,7].gen_rotation.to_a

cnt = 0
primes.each_key do |n|
  if n.to_s.split("").gen_rotation.all?{|pe| primes[pe.join.to_i] }
#  if n.to_s.split("").permutation(n.to_s.length).all?{|pe| primes[pe.join.to_i] }
#    p n
    cnt += 1
  end
end
p cnt
