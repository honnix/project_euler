max = 0
the_one = 0

(10 .. 1000).each do |p|
  count = 0
  (1 .. p / 3).each do |a|
    (a .. (p - a) / 2).each do |b|
      c = p - a - b
      if a ** 2 + b ** 2 == c ** 2 and a + b > c
        # puts "#{a}, #{b}, #{c}"
        count += 1
      end
    end
  end

  if count > max
    max, the_one = count, p
  end
end

puts the_one
