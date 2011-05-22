# -*- coding: undecided -*-
# http://projecteuler.net/index.php?section=problems&id=10
# prime_list.rb は借り物。あんまり理解してない。

require "prime_list"
p prime_list(2000000).inject(0){|s,n|s+n}
