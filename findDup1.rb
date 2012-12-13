#!/usr/bin/env ruby

# Read a file with sample data

intArray = Array.new

inFile = File.open("integers.txt")
   while line = inFile.gets
      intArray.push(line)
   end
      
inFile.close

# puts intArray.inspect

dup = intArray.select{|element| intArray.count(element) > 1 }

if dup.uniq.size > 0 
  puts("The array has dup values")
else
  puts("No dup values found")
end

# puts dup


