require 'rubygems'
require 'nokogiri'
require 'open-uri'
PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"

#page = Nokogiri::HTML(open("https://google.fr"))
page.css('title')
puts page  # => Nokogiri::HTML::Document
