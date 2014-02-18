SIZE = 100000
tri = (286 .. SIZE).map {|n| n * (n + 1) / 2}
pen = (166 .. SIZE).map {|n| n * (3 * n - 1) / 2}
hex = (144 .. SIZE).map {|n| n * (2 * n - 1)}

all = (tri + pen + hex).sort

all.each_with_index do |n, index|
  if n == all[index + 1] and n == all[index + 2]
    puts n
  end
end
