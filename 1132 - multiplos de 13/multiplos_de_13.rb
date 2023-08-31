numbers = 0
x = gets.to_i
y = gets.to_i
Array(x..y).map{|number|
  numbers += number if number % 13 != 0
}
puts numbers

#     if number_a > number_b
#       numbers = Array(0..number_a)
#       numbers.each{|number|
#         return puts "Sao Multiplos" if number_b * number == number_a
#       }
#     else
#       numbers = Array(0..number_b)
#       numbers.each{|number|
#         return puts "Sao Multiplos" if number_a * number == number_b
#       }
#     end
#     return puts "Nao sao Multiplos"
#   end
# end
# Number.is_multiple?