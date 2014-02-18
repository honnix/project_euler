require 'memoize'
require 'mathn'

include Memoize

primes = (2 .. 1000).select {|x| x.prime?}

def test(x)
  m = x.join('').to_i
  n = x.reverse.join('').to_i
  m.odd? and n.odd? and m.prime? and n.prime?
end

memoize(:test)

the_set = []

primes.combination(5).each do |c|
  result = c.combination(2).all? do |x|
    test(x)
  end

  if result
    the_set = c
    break
  end
end

p the_set
