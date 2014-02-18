def fraction(x, y)
  if x >= y
    false
  elsif x % 10 == 0 or y % 10 == 0
    false
  else
    xa = x.to_s.split('')
    ya = y.to_s.split('')

    (0 .. 1).one? do |i|
      index = ya.find_index {|c| c == xa[i]}
      if index != nil and x * ya[1 - index].to_i == y * xa[1 - i].to_i
        true
      else
        false
      end
    end
  end
end

array = []

(10 .. 99).each do |x|
  (x .. 99).each do |y|
    array << [x, y] if fraction(x, y)
  end
end

p array
