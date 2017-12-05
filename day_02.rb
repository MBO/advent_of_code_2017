#!/usr/bin ruby

input = ARGF.read.chomp
puts input
  .split(/\n/)
  .map { |line| line.split(/\s+/).map(&:to_i).minmax.reverse.reduce(:-) }
  .reduce(:+)