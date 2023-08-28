gets.chomp.to_i.times{
  a, b, c = gets.chomp.split(" ").map(&:to_f)
  puts ((a * 2 + b * 3 + c * 5) / 10).round(1)
}