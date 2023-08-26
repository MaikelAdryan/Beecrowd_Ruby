odd = []
n_end = gets.chomp.to_i - 1
start = gets.chomp.to_i + 1
(start..n_end).each{|number|
  odd << number if number % 2 != 0
}
puts odd.sum