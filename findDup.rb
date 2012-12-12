#!/usr/bin/env ruby

# Classic sample to detect a duplicate value in a group of integers
# Define array with 100 integers
x = Array(1..100)

# puts x.inspect

x.map! { |element|
   if(element == 50)
       49 # change 50 to 49
   else
       element
   end
}

dup = x.select{|element| x.count(element) > 1 }

dup.uniq

puts dup