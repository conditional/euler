# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=24
# Array#permutation は使っちゃいけないと思いつつ。。。
# 5秒くらい。
# 

#p [0,1,2].permutation(3).to_a
p [0,1,2,3,4,5,6,7,8,9].permutation(10).to_a[1_000_000-1].join.to_i
