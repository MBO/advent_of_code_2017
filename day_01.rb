#!/usr/bin/env ruby

input = ARGF.read.chomp
digits = input.split(//).map(&:to_i)
if digits.length > 1
  puts digits.reduce([ digits[-1], 0 ]) { |memo, digit|
    [ digit, memo[1] + (if memo[0] == digit then digit else 0 end) ]
  }[1]
else
  puts "0"
end