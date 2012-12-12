#!/usr/bin/env ruby

outFile = File.new("out.txt", "w")

for i in 1..100
  outFile.puts(i)
end
    
outFile.close
