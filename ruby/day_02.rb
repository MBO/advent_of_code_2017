#!/usr/bin ruby

class Day02
  def self.variant_1(input)
    input
      .split(/\n/)
      .map { |line| line.split(/\s+/).map(&:to_i).minmax.reverse.reduce(:-) }
      .reduce(:+)
  end

  def self.variant_2(input)
    rows = input.split(/\n/)
    rows.map do |line|
      numbers = line.split(/\s+/).map(&:to_i).sort
      pair = numbers.combination(2).find { |n1,n2| n2 % n1 == 0 }
      pair[1] / pair[0]
    end
    .reduce(:+)
  end
end


if __FILE__ == $PROGRAM_NAME
  input = STDIN.read.chomp
  puts Day02.variant_1(input)
  puts Day02.variant_2(input)
end