a = gets.chomp.to_f
b = gets.chomp.to_f

media = ((a * 3.5) + (b * 7.5)) / 11

puts "MEDIA = #{format("%.5f", media)}"