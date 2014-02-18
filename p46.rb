require 'mathn'

def get_prime
  Fiber.new do
    n = 2
    loop do
      if n.prime?
        Fiber.yield n
      end
      n += 1
    end
  end
end

p = get_prime

33.step(10000, 2).each do |n|
  p = get_prime
  next_prime = p.resume
  while next_prime <= n
    sqrt = ((n - next_prime) / 2) ** 0.5
    break if sqrt.to_i == sqrt
    next_prime =  p.resume
  end

  if next_prime > n
    puts n
    break
  end
end
