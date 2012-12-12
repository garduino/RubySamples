#!/usr/bin/env ruby

begin
file = File.open("samplelog.txt")
   while line = file.gets
      puts line
   end
ensure
   file.close
end