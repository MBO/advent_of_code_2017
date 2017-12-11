#!/usr/bin ruby

class Day03
  def self.variant_1(input)
    number = input.to_i
    base = 1
    base += 2 while base * base < number
    base2 = base * base
    width = base - 1
    corners = [base2 - 3 * width, base2 - 2 * width, base2 - width, base2]
    if corners.include?(number)
      return base - 1
    end
    x = corners.find { |c| c > number } # try to find corner bigger than number
    x -= width / 2 # now x should point to middle of edge
    (number - x).abs + width / 2
  end

  def self.variant_2(input)
    
  end
end


if __FILE__ == $PROGRAM_NAME
  input = STDIN.read.chomp
  puts Day03.variant_1(input)
  # puts Day03.variant_2(input)
end