#!/usr/bin/env ruby

#The Facebook Like counter returns the number of
#likes from the specified webpage
 
require 'rubygems'
require 'open-uri'
require 'libxml'
require 'net/http'
 
siteURL = &quot;holler.com,natashatherobot.wordpress.com,psychworld.com&quot;
apiURL = &quot;http://api.facebook.com/restserver.php?method=links.getStats&amp;urls=#{siteURL}&quot;
xml_data = Net::HTTP.get_response(URI.parse(apiURL)).body
doc = LibXML::XML::Parser.string(xml_data).parse #parses the XML data
 
# here is a hack if you can't figure out where to go from here
 
content = doc.to_s #convert the XML results into a string
content = content.split(/&lt;link_stat&gt;/) #split the string into an array of strings for individual sites
content.delete_at(0) #delete the header of the XML file
     
#get the website and total like count and store as a hash
likeCount = Hash.new
     
content.each { |site|
 url = site.match(/url&gt;([^&lt;]+)&lt;/)[1]
 like_count = site.match(/like_count&gt;([^&lt;]+)&lt;/)[1]
 likeCount.store(url, like_count)
}
 
return likeCount #returns a hash with a url and its like count. 