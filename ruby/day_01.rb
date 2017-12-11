#!/usr/bin/env ruby

class Day01
  def initialize(step: nil)
    @step = step
  end

  def process(digits)
    if digits.size > 1
      digits.each_with_index.reduce(0) { |memo, (digit, index)|
        if digit == digits[(index + @step) % digits.size]
          memo + digit
        else
          memo
        end
      }
    else
      0
    end
  end

  def self.variant_1(input)
    digits = input.split(//).map(&:to_i)
    Day01.new(step: 1).process(digits)
  end

  def self.variant_2(input)
    digits = input.split(//).map(&:to_i)
    Day01.new(step: digits.size / 2).process(digits)
  end
end

if __FILE__ == $PROGRAM_NAME
  case ARGV[0]
  when nil then
    puts Day01.variant_1(STDIN.read.chomp)
  when "-v2" then
    puts Day01.variant_2(STDIN.read.chomp)
  else
    puts "Usage: ruby #{$PROGRAM_NAME} [-v2]"
  end
end