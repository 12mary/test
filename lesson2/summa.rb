total = {}
summa = {}
exit = ['stop', 'STOP', 'Stop', 'СТОП', 'стоп', 'Стоп']
a = 0
puts "---------------------------------------"
puts "Введите наименование товара :"
name = gets.chomp
while (exit.include?(name) != true)
  product = {}
  puts "Введите цену товара, $ :"
  price = gets.chomp.to_f
  puts "Введите количество / вес (кг) товара :"
  value_product = gets.chomp.to_f
  product[:price] = price
  product[:value] = value_product
  total[name] = product
  summa[name] = price * value_product
  puts "---------------------------------------"
  puts "Введите наименование товара :"
  name = gets.chomp
end
puts "---------------------------------------"
puts "Вы собираетесь купить:"
summa.each do |key, value|
 	puts "#{key} на сумму #{value} руб."
end
summa.each do |key, value|
 	a = a + value
end
puts "Общая сумма: #{a} руб."
puts "---------------------------------------"
puts " "
puts "А это служебная информация - кэш"
puts total
