#!/usr/bin/env ruby

# Sample read/write of file

outFile = File.new("out.txt", "w")

inFile = File.open("samplelog.txt")
   while line = inFile.gets
      outFile.puts(line)
      outFile.puts("--------------------------------------------------------------------------------------------")
   end
      
outFile.close
inFile.close