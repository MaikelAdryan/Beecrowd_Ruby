input = gets.chomp.to_i
(1..10000).map{|number| puts "#{number}"if number % input == 2}