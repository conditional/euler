# -*- coding: undecided -*-
# http://projecteuler.net/index.php?section=problems&id=97
#
# Matz Rubyだと多倍長整数がアウトオブレンジっぽくてインフィニティーだったので
# JRubyで動かした。なんとか動いたけど15分...
#
# $ time ruby --server 097.rb
# 097.rb:5 warning: in a**b, b may be too big
# 8739992577
# real    15m23.235s
# user    15m35.218s
# sys     0m6.103s
# $ ruby -v
# jruby 1.7.0.dev (ruby-1.8.7-p330) (2011-05-25 90efbf1) (Java HotSpot(TM) 64-Bit Server VM 1.6.0_24) [darwin-x86_64-java]


n = 28433 * 2**7830457 + 1
p n.to_s.split("").last(10).join.to_i
