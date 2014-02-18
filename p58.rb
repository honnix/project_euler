require 'mathn'

SIZE = 200001
# MAX = SIZE * SIZE

# array = Array.new(SIZE) {|i| Array.new(SIZE, 0)}
# array[(SIZE - 1) / 2][(SIZE - 1) / 2] = 1
# current = :right

# i = j = (SIZE - 1) / 2
# n = 2

# while n <= MAX
#   case current
#   when :right
#     begin
#       j += 1
#       array[i][j] = n
#       n += 1
#     end until n > MAX or array[i + 1][j] == 0
#     current = :down
#   when :down
#     begin
#       i += 1
#       array[i][j] = n
#       n += 1
#     end until array[i][j - 1] == 0
#     current = :left
#   when :left
#     begin
#       j -= 1
#       array[i][j] = n
#       n += 1
#     end until array[i - 1][j] == 0
#     current = :up
#   when :up
#     begin
#       i -= 1
#       array[i][j] = n
#       n += 1
#     end until array[i][j + 1] == 0
#     current = :right
#   end
# end

# sum = 0

# 12001.step(SIZE, 2).each do |i|
#   count = 0
#   ((SIZE - i) / 2 .. (SIZE - i) / 2 + i - 1).each {|x| count += 1 if array[x][x].prime?}
#   ((SIZE - i) / 2 .. (SIZE - i) / 2 + i - 1).each {|x| count += 1 if array[x][SIZE - 1 - x].prime?}

#   puts "#{count * 100} / #{(i / 2).to_i * 4 + 1}, #{i}"

#   if count * 100 / ((i / 2).to_i * 4 + 1) < 10
#     puts i
#     break
#   end
# end

total = 0
step = 3
while true
  n2 = step ** 2 - step + 1
  n3 = n2 - step + 1
  n4 = n3 - step + 1

  total += 1 if n2.prime?
  total += 1 if n3.prime?
  total += 1 if n4.prime?

  if total * 100 < (step * 2 - 1) * 10
    puts step
    break
  end

  step += 2
end
