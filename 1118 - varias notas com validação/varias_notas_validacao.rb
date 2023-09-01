def calculate
  note_1 = gets.to_f
  while note_1 > 10 or note_1 < 0
    puts "nota invalida"
    note_1 = gets.to_f
  end
  note_2 = gets.to_f
  while note_2 > 10 or note_2 < 0
    puts "nota invalida"
    note_2 = gets.to_f
  end
  puts "media = #{format("%.2f", (note_1 + note_2) / 2)}"
  puts "novo calculo (1-sim 2-nao)"
  new_calculate = gets.to_i
  while new_calculate > 2 or new_calculate < 1
    puts "novo calculo (1-sim 2-nao)"
    new_calculate = gets.to_f
  end
  calculate() if new_calculate == 1
  return if new_calculate == 2
end
calculate()