numbers = 0
x = gets.chomp.to_i
y = gets.chomp.to_i
if x < y
  Array(x..y).map{|number|
    numbers += number if number % 13 != 0
  }
else
  Array(y..x).each{|number|
    numbers += number if number % 13 != 0
  }
end
puts numbers
