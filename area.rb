puts "Введите величину основания треугольника, в см"
a = gets.chomp.to_f
puts "Введите величину высоты треугольника, в см"
h = gets.chomp.to_f
s = 0.5*a*h
puts "------------------------------------------"
puts "Площадь данного треугольника равна #{s} кв.см"
