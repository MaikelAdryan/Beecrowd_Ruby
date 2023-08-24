# module ConsumptionPerCity
#   def self.new_city
#     @number_city = 1
#     number = gets.chomp.to_i
#     amount_houses(number)
#   end
#   def self.amount_houses number
#     return if number == 0
#     input_houses = []
#     number.times {
#       input_houses << gets.chomp.split(" ").map(&:to_i)
#     }
#     puts "Cidade# #{@number_city}:"
#     # input_houses = [[1, 25], [2, 20], [3, 31], [2, 40], [6, 70]]
#     sort_consumption(input_houses)
#     calculate_consumption_medio(input_houses)
#     @number_city += 1
#     puts ""
#     new_city()
#   end
#   def self.sort_consumption input_houses
#     puts input_houses.map{|house, consumption|
#       [(consumption/house).round, house]
#     }.sort.map{|consumption, house|
#       "#{house}-#{consumption}"
#     }.join(" ")
#   end
#   def self.calculate_consumption_medio input_houses
#     house = []
#     consumption = []
#     input_houses.each{|h, c|
#       house << h
#       consumption << c
#     }
#     average_consumption = (consumption.sum.to_f/house.sum.to_f).floor(2)
#     puts "Consumo medio: #{average_consumption} m3."
#   end
# end
# ConsumptionPerCity.new_city

# module ConsumptionPerCity
#   def self.new_city

#   end
# end
# ConsumptionPerCity.new_city

input = 
"10
7 49
7 42
8 16
3 15
1 3
3 21
2 12
4 36
4 36
7 28
10
9 63
8 32
3 9
2 8
6 42
1 3
4 12
8 48
7 35
6 54
0" #gets

lines = input.strip().split("\n")
lines.pop
index = 0
city = 0

while index < lines.length
  number = lines[index].to_i
  numbers = []
  puts "Cidade# #{city+=1}:"
  number.times{
    numbers << lines[index += 1].split(" ").map(&:to_f)
  }
  puts numbers.map{|x, y|
    [(y/x).floor, x]
  }.sort.map{|y, x|
    "#{x.to_i}-#{y.to_i}"
  }.join(" ")

  house = []
  consumption = []
  numbers.each{|h, c|
    house << h
    consumption << c
  }
  average_consumption = format("%.2f", (consumption.sum.to_f/house.sum.to_f).floor(2))
  puts "Consumo medio: #{average_consumption} m3."
  puts "" if index < lines.length-1
  index+=1
end