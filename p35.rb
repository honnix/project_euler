require 'memoize'

include Memoize

def circular(n)
  size = n.to_s.size
  result = []
  (size - 1).downto(1).each do |i|
    result << n / (10 ** i) + n % (10 ** i) * (10 ** (size - i))
  end
  result
end

def prime?(n)
  (2 .. n ** 0.5).all? do |i|
    n % i != 0
  end
end

memoize(:prime?)

count = 0
(2 .. 1_000_000).each do |i|
  if prime?(i)
    count += 1 if circular(i).all? {|j| prime?(j)}
  end
end

puts count
