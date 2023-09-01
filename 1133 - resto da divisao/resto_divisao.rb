x = gets.to_i
y = gets.to_i

if x > y
  Array(y+1..x-1).map{|number|
    puts number if number % 5 == 2 or number % 5 == 3
  }
else
  Array(x+1..y-1).map{|number|
    puts number if number % 5 == 2 or number % 5 == 3
  }
end