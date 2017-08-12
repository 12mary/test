alphabet = ('a'..'z').to_a
# puts "Cоздаём хэш"
all = {}
z = 1
alphabet.each do |index|
 	all[index] = z
 	z = z + 1
end
# puts all
vokal = ['a', 'e', 'i', 'o', 'u', 'y']
all.each do |index, key|
     all.delete(index) if not(vokal.include?(index))
end
# puts "новый хэш"
# puts all
puts "---------------------------------------"
puts "Место гласных букв в латинском алфавите"
all.each do |key, value|
 	puts "#{key} - #{value}"
end