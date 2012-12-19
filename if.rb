#!/usr/bin/env ruby

income = 30000.00
if income < 10000
  rate = 0.02
elsif income < 30000
  rate = 0.28
else
  rate = 0.5
end
puts rate