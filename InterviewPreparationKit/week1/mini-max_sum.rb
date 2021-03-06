#!/bin/ruby
# frozen_string_literal: true

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
  total = arr.sum
  printf('%d %d', total - arr.max, total - arr.min)
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
