#!/usr/bin/env ruby

#Scans for vowels
print "Enter in a Sentence: "
n = gets
#Get user input
p = n.scan(/[aeiouAEIOU]/)  { |y| puts y}
# Create variable p scan the string n for chars with 'aeiouAEIOU' then puts them into variable y
#then prints y