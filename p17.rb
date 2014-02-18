s1 = 'one two three four five six seven eight nine'
s2 = 'ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen'

s3 = 'twenty' * 10 + s1
s4 = 'thirty' * 10 + s1
s5 = 'forty' * 10 + s1
s6 = 'fifty' * 10 + s1
s7 = 'sixty' * 10 + s1
s8 = 'seventy' * 10 + s1
s9 = 'eighty' * 10 + s1
s10 = 'ninety' * 10 + s1

s11 = s1 * 100 + 'hundred' * 900 + 'and' * (99 * 9) + (s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10) * 9

s12 = 'one thousand'

puts s11.gsub(' ', '').size + s12.gsub(' ', '').size + s1.gsub(' ', '').size + s2.gsub(' ', '').size + s3.gsub(' ', '').size + s4.gsub(' ', '').size + s5.gsub(' ', '').size + s6.gsub(' ', '').size + s7.gsub(' ', '').size + s8.gsub(' ', '').size + s9.gsub(' ', '').size + s10.gsub(' ', '').size
