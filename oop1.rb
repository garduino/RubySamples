#!/usr/bin/env ruby

class Person
  def initialize(fname, lname)
   @fname = fname
   @lname = lname
  end
  attr_reader :fname, :lname
end

def to_s
     "Person: #@fname #@lname"
end

class Employee < Person
  def initialize(fname, lname, position)
    super(fname,lname)
    @position = position
  end
  def to_s
     super + ", #@position"
  end
end

employee = Employee.new("Augustus","Bondi","CFO")

print "\n"
print "--employee-------------------"
print "\n"

print employee

print "\n"
print "--employee fname-------------------"
print "\n"
print employee.fname

print "\n"
print "---------------------"
print "\n"

person = Person.new("Augustus","Bondi")
print person