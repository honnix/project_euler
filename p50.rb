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

primes = []

t = p.resume
while t < 1_000_0
  primes << t
  t = p.resume
end

longest = 0
the_prime = 0
(0 .. primes.size - 1).each do |i|
  (longest + 1 .. primes.size - i).each do |j|
    sum = primes[i, j].inject :+
    if sum < 1_000_000 and sum.prime?
      puts "#{sum}, #{i}, #{j}"
      longest = j
      the_prime = sum
    elsif sum > 1_000_000
      break
    end
  end
end

p the_prime
