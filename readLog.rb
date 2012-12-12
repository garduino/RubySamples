#!/usr/bin/env ruby

begin
file = File.open("sofstore.com-access.log.txt")
   while line = file.gets
      puts line
   end
ensure
   file.close
end