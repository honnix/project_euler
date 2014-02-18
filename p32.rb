def pandigital(x, y, z)
  s = x.to_s + y.to_s + z.to_s
  if s.size == 9
    array = Array.new(9, false)
    s.each_byte {|b| array[b - 49] = true if b >= 49}
    array.all? {|i| i}
  else
    false
  end
end

result = []

(1 .. 99).each do |i|
  (100 .. 9999).each do |j|
    product = i * j
    if pandigital(i, j, product)
      puts "i = #{i}; j = #{j}"
      result << product
    end
  end
end

p result
puts result.uniq.inject :+
