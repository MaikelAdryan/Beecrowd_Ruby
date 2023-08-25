numbers = 0
input = []
6.times {
  input << gets.chomp.to_f
}
input.map{|number|
  numbers += 1 if number > 0
}
puts "#{numbers} valores positivos"