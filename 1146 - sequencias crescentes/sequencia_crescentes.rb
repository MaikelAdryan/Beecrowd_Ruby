x = gets.to_i
string = ""
while x != 0
  Array(1..x).each{|index|
    string += "#{index}"
    string += " " if index < x
  }
  puts string
  string = ""
  x = gets.to_i
end
