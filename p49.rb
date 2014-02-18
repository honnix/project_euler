require 'mathn'

def get_prime
  Fiber.new do
    n = 1000
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

primes.each do |n|
  p1 = n
  p2 = n + 3330
  p3 = n + 3330 * 2

  break if p2 > 9999 or p3 > 9999

  if primes.include? p2 and primes.include? p3
    t = n.to_s.split('').sort
    if t == p2.to_s.split('').sort and t == p3.to_s.split('').sort
      puts n
    end
  end
end
