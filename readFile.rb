#!/usr/bin/env ruby

inFile = File.open("logfile.txt", "r")
outFile = File.new("out.txt", "w")

for i in 1..100
  outFile.puts(i)
end
    
outFile.close
inFile.close