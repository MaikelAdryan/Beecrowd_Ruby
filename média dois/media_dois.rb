a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

media = ((a * 2) + (b * 3) + (c * 5)) / 10

puts "MEDIA = #{format("%.1f", media)}"