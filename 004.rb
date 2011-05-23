
D = (100...999).map {|a| a}.reverse
a = []
D.each do |i|
  D.each do |j|
    #p i * j
    a << i * j if (i * j).to_s.reverse == (i*j).to_s
  end
end
p a.max
