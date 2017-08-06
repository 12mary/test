month = { 'january' => 31,'february' => 28, 'february_vis' => 29, 'marсh' => 31, 'april' => 30, 'may' => 31, 'june' => 30, 'jule' => 31, 'august' => 31, 'septerber' => 30,'october' => 31, 'november' => 30, 'december' => 31 }
puts "-------------------------------------------------" 
puts "Месяца с каким количеством дней Вас интересуют ?"
puts "Введите требуемое количество дней в месяце: "
days = month.values
puts "-------------------------------------------------"
z = gets.chomp.to_i
v = days.include? (z) 
if v == false
	puts "Месяцев с таким количеством дней НЕТ" 
else 
	if (z == 28) or (z == 29)
	puts "Февраль: 28 дней - в невысокосном году, 29 дней - в высокостном году" 
    end
end
if z == 31 then month.each do |key, value| 
	                         puts key if value == 31
	                       end	
end	                  	
puts "-------------------------------------------------"
puts "Вот в этих месяцах 30 дней:"
month.each do |key, value| 
	           puts key if value == 30
	       end	
