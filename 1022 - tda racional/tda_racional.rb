module Fraction
  def self.calculate
    gets.chomp.to_i.times {
      input = gets.chomp.split(" ")
      number_1 = input[0].to_i
      denominator_1 = input[2].to_i
      operation = input[3]
      number_2 = input[4].to_i
      denominator_2 = input[6].to_i
    
      case operation
      when "+"
        result_number = number_1 * denominator_2 + number_2 * denominator_1
        result_denominator = denominator_1 * denominator_2
      when "-"
        result_number = number_1 * denominator_2 - number_2 * denominator_1
        result_denominator = denominator_1 * denominator_2
      when "*"
        result_number = number_1 * number_2
        result_denominator = denominator_1 * denominator_2
      when "/"
        result_number = number_1 * denominator_2
        result_denominator = number_2 * denominator_1
      end
      divisor = find_divisor(result_number, result_denominator)
      result = "#{result_number}/#{result_denominator} = #{result_number/divisor}/#{result_denominator/divisor}"
      puts result
    }
  end
  def self.find_divisor n1, n2
    n1 > n2 ? maior = n1 : maior = n2
    number = maior
    maior.times {
      return number if n1 % number == 0 and n2 % number == 0
      number -= 1
    }
  end
end
Fraction.calculate