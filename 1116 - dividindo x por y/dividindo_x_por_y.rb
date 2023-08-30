gets.chomp.to_i.times{|x, y, result|
  x, y = gets.chomp.split(" ").map(&:to_f)
  y != 0 ? result = "#{format("%.1f", x / y)}" : result = "divisao impossivel"
  puts result
}