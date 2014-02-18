a1 = ('a' .. 'z').to_a
a2 = ('A' .. 'Z').to_a

('a' .. 'z').each do |c|
  t59 = 59 ^ c.getbyte(0)
  t12 = 12 ^ c.getbyte(0)

  puts "#{a1[t59 - 'a'.getbyte(0)]}, #{a2[t59 - 'A'.getbyte(0)]}"
  puts "#{a1[t12 - 'a'.getbyte(0)]}, #{a2[t12 - 'A'.getbyte(0)]}"
end
