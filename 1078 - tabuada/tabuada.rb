input = gets.chomp.to_i
number = 1
while number <= 10
  puts "#{number} x #{input} = #{input * number}"
  number += 1
end