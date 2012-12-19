#!/usr/bin/env ruby

require 'rexml/document'

include REXML

file = File.new("file.xml")

doc = Document.new(file)

puts doc


#doc = REXML::Document.new File.new('file.xml')

#doc.elements('*/order-notification') { |element| puts element.get_text }