puts "---------------------------------------"
puts "Введите дату:"
puts "число:  (01, 02, ..., 15, ..., 31)"
number = gets.chomp
puts "месяц цифрами: (01, 02, ...,11, 12)"
month = gets.chomp
puts "год:"
year = gets.chomp.to_i
puts "Введенная Вами дата:  #{number}.#{month}.#{year}"
puts "-----------------------------------------"
number = number.chomp.to_i
month_before = { '01' => 0, '02' => 31, '03' => 59, '04' => 90, '05' => 120, '06' => 151, '07' => 181, '08' => 212, '09' => 243,'10' => 273, '11' => 304, '12' => 334 }
month_before_vis = { '01' => 0, '02' => 31, '03' => 60, '04' => 91, '05' => 121, '06' => 152, '07' => 182, '08' => 213, '09' => 244,'10' => 274, '11' => 305, '12' => 335 }
four1 = year / 4
four2 = year / 4.0
four = four1 - four2
fourhundred1 = year / 400
fourhundred2 = year / 400.0
fourhundred = fourhundred1 - fourhundred2
hundred1 = year / 100
hundred2 = year / 100.0
hundred = hundred1 - hundred2
if ( four == 0 ) && ( fourhundred == 0 )
   puts "Год высокосный"
   before = month_before_vis [month]
else 
	if( four == 0 ) && ( hundred != 0 )
      puts "Год высокосный"
      before = month_before_vis [month]
    else puts "Год НЕвысокосный"
    	 before = month_before [month]
    end
end
days = number + before
puts "С начала #{year} года до этой даты #{days} дней/дня включительно"