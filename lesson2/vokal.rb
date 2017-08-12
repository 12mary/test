alphabet = ('a'..'z').to_a
# puts "Cоздаём хэш"
all = {}
z = 1
alphabet.each do |index|
 	all[index] = z
 	z = z + 1
end
# puts all
all.each do |index, key|
    all.delete(index) if index != 'a' && index != 'e' && index != 'i' && index != 'o' && index != 'u' && index != 'y' 
end
# puts "новый хэш"
# puts all
puts "---------------------------------------"
puts "Место гласных букв в латинском алфавите"
all.each do |key, value|
 	puts "#{key} - #{value}"
end