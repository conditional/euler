# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=37
# 
# スマートじゃないけどまぁいいか。
#

require "prime_list"
prs = prime_list(1000000)
$pr_hash = {}
prs.each do |p|
  $pr_hash[p] = true
end

def truncatable_l2r?(n)
  pow = n.to_s.length - 1
  begin
    n = n % 10**pow
    pow -= 1
    return true if n == 0
    return false if !$pr_hash[n]
  end while n > 0
  return true
end

def truncatable_r2l?(n)
  begin
    n /= 10
    return true if n == 0
    return false if !$pr_hash[n]
  end while n > 0
  return true
end

#p truncatable_l2r?(3797)
#p truncatable_r2l?(3797)
sum = 0
prs.each do |n|
  if truncatable_r2l?(n) && truncatable_l2r?(n)
    #p n
    sum += n
  end
end
p sum - 2 - 3 - 5 - 7
