fibo = [0]
first = 0
sekond = 1
summa = first + sekond
until summa > 100
	fibo.push(summa)
	summa = first + sekond
    first = sekond
    sekond = summa  
end
puts "Массив из числел Фибоначчи до 100"
puts fibo 