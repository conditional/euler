#
# http://projecteuler.net/index.php?section=problems&id=3
#
LIM = 600851475143
l = 10000
while true
  #next if l % 2 == 0 || l % 3 == 0
  if LIM % l == 0
    puts l
    break
  end
  l -= 1
end
