valid = true
note_1 = nil
note_2 = nil
while valid
  note = gets.chomp.to_f
  if note > 10 or note < 0 
   puts "nota invalida"
  else
    note_2 = note if note_1 != nil and note_2 == nil
    note_1 = note if note_1 == nil
    if note_1 != nil and note_2 != nil
      puts "media = #{format("%.2f", (note_1 + note_2) / 2)}"
      valid = false
    end
  end
end