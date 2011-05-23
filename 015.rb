# -*- coding: utf-8 -*-

class Integer
  def factorial
    (1..self).inject(1, :*)
  end
end

def combination(n,m)
  n.factorial / (m.factorial * (n-m).factorial)
end

# 全部で40回移動するうち、20回右(or 下)へ移動する組み合わせの数
puts combination(40,20)
