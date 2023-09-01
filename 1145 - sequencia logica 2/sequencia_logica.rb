x, y = gets.split(" ").map(&:to_i)
result = ""
index = 0
Array(1..y).map{|number|
  index += 1
  result += "#{number}"
  result += " " if index < x
  if index == x
    puts result
    result = ""
    index = 0
  end
}