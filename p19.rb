nonleap = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
leap = [31, 29] + nonleap.drop(2)

def leap?(y)
  if y % 4 == 0 and y % 100 != 0 or y % 400 == 0
    true
  else
    false
  end
end

sundays = 0
last = 2

(1901 .. 2000).each do |y|
  months = if leap?(y)
             leap
           else
             nonleap
           end

  months.each do |m|
    left = m % 7
    last += left
    puts last
    last %= 7
    if last == 0
      sundays += 1
    end
  end
end

puts sundays
