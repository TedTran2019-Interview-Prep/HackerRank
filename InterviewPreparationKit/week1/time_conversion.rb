#!/bin/ruby
# frozen_string_literal: true

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
  hour = s[0...2]
  minute = s[3...5]
  second = s[6...8]
  time = s[-2..-1]
  hour = (hour.to_i + 12) % 24 if time == 'PM' && hour != '12'
  hour = '00' if time == 'AM' && hour == '12'
  "#{hour}:#{minute}:#{second}"
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close
