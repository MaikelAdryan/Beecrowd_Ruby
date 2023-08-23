module Number
  def self.is_multiple?
    number_a, number_b = gets.split(" ").map(&:to_i)
    if number_a > number_b
      numbers = Array(0..number_a)
      numbers.each{|number|
        return puts "Sao Multiplos" if number_b * number == number_a
      }
    else
      numbers = Array(0..number_b)
      numbers.each{|number|
        return puts "Sao Multiplos" if number_a * number == number_b
      }
    end
    return puts "Nao sao Multiplos"
  end
end
Number.is_multiple?