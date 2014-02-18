require 'mathn'

def div_by(rem, div)
  y = (0 .. 4).find {|x| rem * (10 ** x) > div}
  puts "#{rem}, #{y}, #{div}"
  rem * (10 ** y) % div
end

def len_pattern(init, rems, d)
  rem = div_by(init, d)
  if rems.include? rem
    rems.size - rems.index(rem)
  else
    rems << rem
    len_pattern(rem, rems, d)
  end
end

max, the_one = 0
(7 ... 1000).each do |n|
  if n.prime?
    rems = []
    t = len_pattern(1, rems, n)
    if t > max
      max = t
      the_one = n
    end
  end
end

puts [max, the_one]
