require 'mathn'

def iter(n)
  return 1 / 2 if n == 0
  1 / (2 + iter(n - 1))
end

count = 0
for i in (0 .. 999)
  n = 1 + iter(i)
  count += 1 if n.numerator.to_s.size > n.denominator.to_s.size
end

puts count
