require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhal_from_its_webpage(page)
  doc = Nokogiri::HTML(open(page))

  doc.xpath('#voyance-par-telephone > table > tbody > tr:nth-child(2) > td > table > tbody').each do |node|
    puts node.text
  end
end


def get_all_the_urls_of_val_doise_townhalls(page)
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

  new = page.css('a.lientxt')
  new.each{|link| " http://annuaire-des-mairies.com#{link['href']}" }

end

def perform

#  get_the_email_of_a_townhal_from_its_webpage(page)
  get_all_the_urls_of_val_doise_townhalls.each{|x| puts "#{mail}"}
end

perform
