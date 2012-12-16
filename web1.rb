!/usr/bin/env ruby

require 'uri'

 uri = URI.parse("http://www.ruby-lang.org/en/")
  uri.open {|f|
    # ...
  }