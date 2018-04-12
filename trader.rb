Crypto_list = {}
page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
Crypto_list = {}
cur_name = page.css('a.currency-name-container')
cur_name.each do |name|
  crypto_list <<
cours = page.css('a.price').text
crypto_list[nom] = cours
end
print crypto_list
