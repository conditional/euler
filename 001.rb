ret = 0
(0...1000).each do |n|
  ret += n if n % 3 == 0 || n % 5 == 0
end
p ret
