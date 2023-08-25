module Month
  def self.which? number
    puts %w[January February March April May June July August September October November December][number-1]
  end
end
number = gets.chomp.to_i
Month.which? number