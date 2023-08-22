class Peaple
  def initialize
    @age_in_days = gets.chomp.to_i
    @days = 0
    @month = 0
    @years = 0
  end
  def age_conversion_per_days
    @days = @age_in_days % 365 % 30
    @month = @age_in_days % 365 / 30
    @years = @age_in_days / 365
    puts "#{@years} ano(s)\n#{@month} mes(es)\n#{@days} dia(s)"
  end
end
Peaple.new.age_conversion_per_days