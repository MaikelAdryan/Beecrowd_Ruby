class Consumption
  def initialize total_distance, total_fuel_spent
    @total_distance = total_distance
    @total_fuel_spent = total_fuel_spent
  end

  def calculate_km_l
    km_per_liter = format("%.3f", @total_distance / @total_fuel_spent)
    puts "#{km_per_liter} km/l"
  end
end

total_distance = gets.chomp.to_i
total_fuel_spent = gets.chomp.to_f

Consumption.new(total_distance, total_fuel_spent).calculate_km_l