valid = true
while valid
  x, y = gets.chomp.split(" ").map(&:to_i)
  puts "primeiro" if x > 0 and y > 0
  puts "segundo" if x < 0 and y > 0
  puts "terceiro" if x < 0 and y < 0
  puts "quarto" if x > 0 and y < 0
  valid = false if x == 0 or y == 0
end