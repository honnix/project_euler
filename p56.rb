max = 0

(1..100).each do |a|
  (1..100).each do |b|
    t = (a ** b).to_s.split('').inject {|x, y| x.to_i + y.to_i}.to_i
    max = [max, t].max
  end
end

puts max
