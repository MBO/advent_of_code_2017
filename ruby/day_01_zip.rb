#!/usr/bin/env ruby

class Day01Zip
  def process(pairs)
    pairs.reduce(0) do |memo, (d1, d2)|
      if d1 == d2
        memo + d1
      else
        memo
      end
    end
  end

  def self.variant_1(input)
    digits = input.split(//).map(&:to_i)
    pairs = digits.zip(digits.rotate)
    Day01Zip.new.process(pairs)
  end

  # calculate only half of input and then multiply by 2
  def self.variant_2(input)
    digits = input.split(//).map(&:to_i)
    halfway = digits.size / 2
    pairs = digits[0...halfway].zip(digits[halfway..-1])
    Day01Zip.new.process(pairs) * 2
  end
end

if __FILE__ == $PROGRAM_NAME
  input = STDIN.read.chomp
  puts Day01Zip.variant_1(input)
  puts Day01Zip.variant_2(input)
end