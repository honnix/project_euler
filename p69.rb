def relatively_prime(n, i)
  while true
    return i == 1 if (n %= i) == 0
    return n == 1 if (i %= n) == 0
  end
end

def phi(n)
  count = 1
  (2 ... n).each { |i| count += 1 if relatively_prime(n, i) }
  count
end

max = 0
result = 1

(2 .. 1_000_000).each do |n|
  p n
  value = n.to_f / phi(n)
  if value > max
    puts n
    max = value
    result = n
  end
end

p result
≈