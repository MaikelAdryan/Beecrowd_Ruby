numbers = []
input = nil
6.times {
  input = gets.chomp.to_f 
  numbers << input  if number > 0 
}
puts "#{numbers.length} valores positivos"
puts format("%.1f", numbers.sum / numbers.length)
