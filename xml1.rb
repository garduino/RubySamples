#!/usr/bin/env ruby

require 'net/http'
require 'rubygems'
require 'xmlsimple'

url = 'http://www.arsol.net/regnow/result.xml'
xml_data = Net::HTTP.get_response(URI.parse(url)).body

data = XmlSimple.xml_in(xml_data)

puts xml_data
puts data

data['Result'].each do |item|
   item.sort.each do |k, v|
      if ["Title", "Url"].include? k
         print "#{v[0]}" if k=="Title"
         print " => #{v[0]}\n" if k=="Url"
      end
   end
end