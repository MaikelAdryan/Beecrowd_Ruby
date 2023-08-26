number = gets.chomp.to_i
number += 1 if number % 2 == 0
6.times{
  puts number
  number += 2
}