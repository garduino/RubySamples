#!/usr/bin/env ruby

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

# puts x # output: [hi there world]

array = [1, 2, 1, 3, 5, 4, 5, 5]

dup = x.select{|element| x.count(element) > 1 }

dup.uniq

puts dup