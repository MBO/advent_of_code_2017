#!/usr/bin ruby

input = ARGF.read.chomp
puts input
  .split(/\n/)
  .each_with_index.map { |(line,index)| line.split(/\s+/).map(&:to_i).find_all(&(if index.even? then :even? else :odd? end)).minmax.reverse.reduce(:-) }
  .reduce(:+)