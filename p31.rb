result = 0

1.downto(0).each do |a|
  if 200 * a == 200
    result += 1
    next
  end
  2.downto(0).each do |b|
    n = 200 * a + 100 * b
    if n >= 200
      result += 1 if n == 200
      next
    end
    4.downto(0).each do |c|
      n = 200 * a + 100 * b + 50 * c
      if n >= 200
        result += 1 if n == 200
        next
      end
      10.downto(0).each do |d|
        n = 200 * a + 100 * b + 50 * c + 20 * d
        if n >= 200
          result += 1 if n == 200
          next
        end
        20.downto(0).each do |e|
          n = 200 * a + 100 * b + 50 * c + 20 * d + 10 * e
          if n >= 200
            result += 1 if n == 200
            next
          end
          40.downto(0).each do |f|
            n = 200 * a + 100 * b + 50 * c + 20 * d + 10 * e + 5 * f
            if n >= 200
              result += 1 if n == 200
              next
            end
            100.downto(0).each do |g|
              n = 200 * a + 100 * b + 50 * c + 20 * d + 10 * e + 5 * f + 2 * g
              if n >= 200
                result += 1 if n == 200
                next
              end
              200.downto(0).each do |h|
                result += 1 if 200 * a + 100 * b + 50 * c + 20 * d + 10 * e + 5 * f + 2 * g + 1 * h == 200
              end
            end
          end
        end
      end
    end
  end
end

puts result
