#!/usr/bin/env ruby

array = []

File.open("/Users/shadow/tmp/array", "r") do |file|
  file.each {|line| array << line.sub("\n", "").split.map {|x| x.to_i}}
end

p array

max = 0

(0..19).each do |x|
  (0..19).each do |y|
    if x <= 16
      product = 1
      (0..3).each {|i| product *= array[x + i][y]}
      max = [max, product].max

      if y >= 3
        product = 1
        (0..3).each {|i| product *= array[x + i][y - i]}
        max = [max, product].max
      end
    end

    if y <= 16
      product = 1
      (0..3).each {|i| product *= array[x][y + i]}
      max = [max, product].max

      if x <= 16
        product = 1
        (0..3).each {|i| product *= array[x + i][y + i]}
        max = [max, product].max
      end
    end
  end
end

p max
