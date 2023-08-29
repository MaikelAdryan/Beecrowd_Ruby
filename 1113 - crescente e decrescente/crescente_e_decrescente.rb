yes = true
while yes
  x, y = gets.chomp.split(" ").map(&:to_i)
  yes = false if x == y
  puts "Crescente" if x < y
  puts "Decrescente" if x > y
end