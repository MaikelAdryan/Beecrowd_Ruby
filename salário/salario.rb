class Emplyee
  def initialize id_emplyee, hours_worked, value_per_hour
    @id_emplyee = id_emplyee,
    @hours_worked = hours_worked,
    @value_per_hour = value_per_hour
  end
  def calculate_salary hours_worked, value_per_hour
    hours_worked * value_per_hour
  end

  def to_s
    puts "NUMBER = #{@id_emplyee}\nSALARY = U$ #{format("%.2f", calculate_salary(@hours_worked, @value_per_hour))}"
  end
end

id_emplyee = gets.chomp.to_i
hours_worked = gets.chomp.to_i
value_per_hour = gets.chomp.to_f

Emplyee.new(id_emplyee, hours_worked, value_per_hour).to_s