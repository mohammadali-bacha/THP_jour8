require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open('http://www.penser-entrepreunariat.fr/?page_id=120'))

page.css('li').each do |el|
#puts  page.css('href')[el.to_i]['href']
puts el.text
end
