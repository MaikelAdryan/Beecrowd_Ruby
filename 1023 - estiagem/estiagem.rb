module ConsumptionPerCity
  def self.init
    amount_houses = gets.chomp.to_i
    number_city = 1
    while amount_houses != 0
      input_houses = []
      amount_houses.times {
        input_houses << gets.chomp.split(" ").map(&:to_i)
      }
      puts "Cidade# #{number_city}:"
      # input_houses = [[1, 25], [2, 20], [3, 31], [2, 40], [6, 70]]
      sort_consumption(input_houses)
      calculate_consumption_medio(input_houses)
      number_city += 1
      puts ""
      amount_houses = gets.chomp.to_i
    end
  end
  def self.sort_consumption input_houses
    result = []
    consumption_per_house = []
    input_houses.map{|house, consumption|
      consumption_per_house << [(consumption/house).round, house]
    }
    consumption_per_house.sort.map{|consumption, house|
      result << "#{house}-#{consumption}"
    }
    puts result.join(" ")
  end
  def self.calculate_consumption_medio input_houses
    house = []
    consumption = []
    input_houses.each{|h, c|
      house << h
      consumption << c
    }
    average_consumption = (consumption.sum.to_f/house.sum.to_f).floor(2)
    puts "Consumo medio: #{average_consumption} m3."
  end
end
ConsumptionPerCity.init