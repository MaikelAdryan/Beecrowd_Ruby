def type_of_fuels
  fuels = [0, 0, 0]
  type = gets.to_i
  while type != 4
    case type
    when 1
      fuels[0] += 1
    when 2
      fuels[1] += 1
    when 3
      fuels[2] += 1
    end
    type = gets.to_i
  end
  puts "MUITO OBRIGADO"
  puts "Alcool: #{fuels[0]}"
  puts "Gasolina: #{fuels[1]}"
  puts "Diesel: #{fuels[2]}"
end
type_of_fuels()