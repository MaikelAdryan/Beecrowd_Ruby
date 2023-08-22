class Interval
  def initialize
    @number = gets.chomp.to_f
  end
  def include?
    if @number >= 0 and @number <= 25
      puts "Intervalo [0,25]"
    elsif @number > 25 and @number <= 50
      puts "Intervalo (25,50]"
    elsif @number > 50 and @number <= 75
      puts "Intervalo (50,75]"
    elsif @number > 75 and @number <= 100
      puts "Intervalo (75,100]"
    else
      puts "Fora de intervalo"
    end
  end
end
Interval.new.include?