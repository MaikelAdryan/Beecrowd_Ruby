class Car
  def initialize
    @hours = gets.chomp.to_f
    @average_speed = gets.chomp.to_f
  end

  def calculate_quantity_of_liters_spent
    liters_spent = @hours * @average_speed / 12
    puts format("%.3f", liters_spent)
  end
end

Car.new.calculate_quantity_of_liters_spent