wins_inter = 0
wins_gremio = 0
draw = 0
plays = 0
new_match = 1

while new_match == 1
  plays += 1
  score_inter, score_gremio = gets.chomp.split(" ").map(&:to_i)
  if score_gremio > score_inter
    wins_gremio += 1
  elsif score_inter > score_gremio
    wins_inter += 1
  else
    draw += 1
  end
  puts "Novo grenal (1-sim 2-nao)"
  new_match = gets.chomp.to_i
end
puts "#{plays} grenais"
puts "Inter:#{wins_inter}"
puts "Gremio:#{wins_gremio}"
puts "Empates:#{draw}"
if wins_gremio > wins_inter
  puts "Gremio venceu mais"
elsif wins_inter > wins_gremio
  puts "Inter venceu mais"
else
  puts "Nao houve vencedor"
end
