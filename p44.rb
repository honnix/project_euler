def pentagonal?(n)
  t = ((24 * n + 1) ** 0.5 + 1) / 6
  t == t.to_i
end

result = 0
i = 0
found = false

while not found
  i += 1
  n = i * (3 * i - 1) / 2
  for j in (1 .. i)
    m = j * (3 * j - 1) / 2
    if pentagonal?(n - m) and pentagonal?(n + m)
      result = n - m
      found = true
      break
    end
  end
end

puts result
