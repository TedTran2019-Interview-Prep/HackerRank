#!/bin/ruby
# frozen_string_literal: true

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  return 0 if arr.length.zero?

  pos = 0
  neg = 0
  zero = 0
  arr.each do |num|
    case num <=> 0
    when 1
      pos += 1
    when 0
      zero += 1
    when -1
      neg += 1
    end
  end
  printf("%.6f\n", pos.fdiv(arr.length))
  printf("%.6f\n", neg.fdiv(arr.length))
  printf("%.6f\n", zero.fdiv(arr.length))
end

n = gets.strip.to_i
arr = gets.rstrip.split.map(&:to_i)
plusMinus arr
