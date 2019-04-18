

class Scrap

	@@currency = 0
	require 'open-uri'
	require 'nokogiri'
	
	def d_to_rub()
	
	

	url = 'https://yandex.ru/search/?text=%D0%BA%D1%83%D1%80%D1%81%D1%8B%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&lr=43&clid=2186621'
	html = open(url)

	
	doc = Nokogiri::HTML(open(html))
	@@currency = doc.css('input')[4]['value'].to_s
	@@currency.split(',').join('.').to_f
	end

	def e_to_rub()

	

	url = 'https://yandex.ru/search/?text=%D0%B5%D0%B2%D1%80%D0%BE%20%D0%BA%20%D1%80%D1%83%D0%B1%D0%BB%D1%8E&lr=43&clid=2186621'
	html = open(url)

		doc = Nokogiri::HTML(open(html))
	@@currency = doc.css('input')[4]['value'].to_s
	@@currency.split(',').join('.').to_f
		
	end
end
