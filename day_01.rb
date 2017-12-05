#!/usr/bin/env ruby

input = ARGF.read.chomp
digits = input.split(//).map(&:to_i)
if digits.size > 1
  # STEP = 1 # part one
  STEP = digits.size / 2 # part two

  puts digits.each_with_index.reduce(0) { |memo, (digit, index)|
    if digit == digits[(index + STEP) % digits.size]
      memo + digit
    else
      memo
    end
  }
else
  puts 0
end