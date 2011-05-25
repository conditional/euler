# -*- coding: utf-8 -*-
# http://projecteuler.net/index.php?section=problems&id=55
# 問題文わかりにくかったので odz 先生の日本語訳
# http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2055
# 参考にさせていただきました。

def is_palindromic?(n)
  n.to_s.reverse.to_i == n
end

def reverse_and_add(n)
  return n.to_s.reverse.to_i + n
end

def is_Lychrel?(n)
  50.times do |c|
    n = reverse_and_add(n)
    return false if is_palindromic?(n)
  end
  return true
end

cnt = 0
(1..10000).each do |n|
  if is_Lychrel?(n)
    cnt += 1
  end
end
p cnt
