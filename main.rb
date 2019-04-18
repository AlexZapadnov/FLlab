require_relative 'search_currency.rb'


curr = Scrap.new()
		puts "Курсы валют на сегодня:
1 usd = #{curr.d_to_rub} rub
1 euro = #{curr.e_to_rub} rub
1 euro = #{curr.d_to_rub/curr.e_to_rub} usd
1 usd = #{curr.e_to_rub/curr.d_to_rub} euro" 

example = Scrap.new()

puts "Хотите конвертировать?(д/н)"
ans = gets.chomp.to_s
if (ans == "Д") or (ans == "Н")
	ans.downcase!
end
if ans == "д"
puts "Что посчитать(выберите номер)?
1. Цена N долларов в рублях.
2. Цена N рублей в долларах.
3. Цена N евро в рублях.
4. Цена N рублей в евро.
5. Цена N евро в долларах.
6. Цена N долларов в евро."
 input = gets.chomp.to_i
 	if (input != 0) and (input < 7)
 		puts "Введите кол-во валюты, которую хотите конвертировать"
 		n = gets.chomp.to_i
 			if n != 0
 				case input
 					when 1
 						puts "#{n} долларов = #{n * example.d_to_rub} рублей"	
 					when 2
 						puts "#{n} рублей = #{n / example.d_to_rub} долларов"
 					when 3
 						puts "#{n} евро = #{n * example.e_to_rub} рублей"
 					when 4
 						puts "#{n} рублей = #{n / example.e_to_rub} евро"
 					when 5
 						puts "#{n} евро = #{n / (example.e_to_rub / example.d_to_rub)} долларов"
 					when 6
 						puts "#{n} долларах = #{n * (example.d_to_rub / example.e_to_rub)} евро"
 				end
 			else
 				puts "You wrote letter or 0"
 			end

 	else 
 		puts "Try again :( 
You wrote 0 or letters"
 	end
else 
	puts "Have a nice day"
end
