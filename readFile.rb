#!/usr/bin/env ruby



# no va no va no va =====

inFile = File.open("samplelog.txt", "r")
outFile = File.new("out.txt", "w")

for i in 1..100
  outFile.puts(i)
end

File.open( "testfile.txt", "w" ) do |the_file|
        the_file.puts "I'm a line in the text file!"
end
    
outFile.close
inFile.close