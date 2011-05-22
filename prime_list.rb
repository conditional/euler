# -*- coding: undecided -*-
# http://code.nanigac.com/source/view/709
# あんまり理解してないけど速いから使ってる

def prime_list(n)
  return [] if n < 2

  limit = (n ** 0.5).to_i
  arr = (3 .. n).step(2).to_a
  arr.unshift(nil)
  len = arr.size

  limit.times do |i|
    j = arr[i]
    next unless j
    k = 2 * i * (i + 1)
    while k <= len
      arr[k] = nil
      k = k + j
    end
  end
  return arr.unshift(2).compact!
end
