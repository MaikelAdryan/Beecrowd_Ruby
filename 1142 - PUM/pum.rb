# number = 0
# gets.to_i.times{
#   puts "#{number += 1} #{number += 1} #{number += 1} PUM"
#   number += 1
# }
number = 0
for i in 1..gets.to_i
  puts "#{number += 1} #{number += 1} #{number += 1} PUM"
  number += 1
end