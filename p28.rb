SIZE = 1001
MAX = SIZE * SIZE

array = Array.new(SIZE) {|i| Array.new(SIZE, 0)}
array[(SIZE - 1) / 2][(SIZE - 1) / 2] = 1
current = :right

i = j = (SIZE - 1) / 2
n = 2

while n <= MAX
  case current
  when :right
    begin
      j += 1
      array[i][j] = n
      n += 1
    end until n > MAX or array[i + 1][j] == 0
    current = :down
  when :down
    begin
      i += 1
      array[i][j] = n
      n += 1
    end until array[i][j - 1] == 0
    current = :left
  when :left
    begin
      j -= 1
      array[i][j] = n
      n += 1
    end until array[i - 1][j] == 0
    current = :up
  when :up
    begin
      i -= 1
      array[i][j] = n
      n += 1
    end until array[i][j + 1] == 0
    current = :right
  end
end

sum = 0

(0 ... SIZE).each {|x| sum += array[x][x]}
(0 ... SIZE).each {|x| sum += array[x][SIZE - 1 - x]}

p sum - 1
