def pal?(n)
  s = n.to_s
  if s.reverse == s
    true
  else
    false
  end
end

def iter(n)
  n + n.to_s.reverse.to_i
end

count = 0

(10 .. 10_000).each do |n|
  t = n
  count += 1 if (1 .. 50).none? {|x| t = iter(t); pal?(t)}
end

puts count
