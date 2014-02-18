require 'memoize'

include Memoize

def tri(n)
  (1 + n) * n / 2
end

def divisors(n)
  count = 1
  (2 .. n ** 0.5).each {|x| count += 1 if n % x == 0}
  count * 2
end

n = 1001
num = 500500
while true
  num += n
  divs = divisors(num)
  p divs
  break if divs  > 500
  n += 1
end

p num
