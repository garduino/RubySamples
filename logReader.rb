#!/usr/bin/env ruby

file = File.open("samplelog.txt")
   while line = file.gets
      puts line
   end