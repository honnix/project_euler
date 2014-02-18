require 'mathn'

max = 0
production = 0

(-999 .. 999).each do |a|
  (-999 .. 999).each do |b|
    puts "#{a}, #{b}"
    count = 0
    n = 0
    while true
      if (n * n + a * n + b).prime?
        count += 1
        n += 1
      else
        break
      end
    end

    if count > max
      max = count
      production = a * b
    end
  end
end

puts production
