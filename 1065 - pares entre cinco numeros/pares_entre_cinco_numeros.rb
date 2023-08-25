pair = []
input = nil
5.times{
  input = gets.chomp.to_i
  pair << input if input % 2 == 0
}
puts "#{pair.length} valores pares"