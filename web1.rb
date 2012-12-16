#!/usr/bin/env ruby

require 'open-uri'
open('http://www.arsol.net/regnow/result.xml'){ |f| print f.read }