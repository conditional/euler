#
# http://projecteuler.net/index.php?section=problems&id=2
#
p = 2
fib = [1,2]
while true
  f = fib[p-1] + fib[p-2]
  break if f > 4000000
  fib << f
  p += 1
end
p fib

# sum of even-valued term
p fib.inject(0) { |s,n|
  if n % 2 == 0
    s + n
  else
    s
  end
}
