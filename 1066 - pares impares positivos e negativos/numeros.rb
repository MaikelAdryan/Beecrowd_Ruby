even = 0
odd = 0
positive = 0
negative = 0
input = nil
5.times{
  input = gets.chomp.to_i
  positive += 1 if input > 0
  negative += 1 if input < 0
  even += 1 if input % 2 == 0
  odd += 1 if input % 2 != 0
}
puts "#{even} valor(es) par(es)"
puts "#{odd} valor(es) impar(es)"
puts "#{positive} valor(es) positivo(s)"
puts "#{negative} valor(es) negativo(s)"