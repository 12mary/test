puts "Как Вас зовут ?"
name = gets.chomp
puts "#{name}, какой у Вас рост в см ?"
heigth = gets.chomp.to_f
ideal_weigt = heigth - 110
puts "#{name}, какой у Вас вес в кг ?"
weigth = gets.chomp.to_f
puts "------------------------------------------------"
if weigth <= ideal_weigt 
	puts "Ну что ж, #{name}, поздравляю! Ваш вес уже оптимальный."
    else puts "Увы, #{name}, Ваш вес превышает оптимальный на #{weigth - ideal_weigt } кг."
end
