require 'memoize'

include Memoize

def truncatable(n)
  size = n.to_s.size
  (size - 1).downto(1).all? do |i|
    prime?(n % (10 ** i)) and prime?(n / (10 ** i))
  end
end

def prime?(n)
  if n >= 2
    (2 .. n ** 0.5).all? do |i|
      n % i != 0
    end
  else
    false
  end
end

memoize(:prime?)

sum = 0
(10 .. 739397).each do |i|
  if prime?(i) and truncatable(i)
    puts i
    sum += i
  end
end

puts sum
