class Student
  def initialize
    @note_one, @note_two, @note_three, @note_four = gets.split(" ").map(&:to_f)
  end
  def approved?
    media = ((@note_one * 2) + (@note_two * 3) + (@note_three * 4) + (@note_four * 1)) / 10
    puts "Media: #{format("%.1f", media)}"
    if media >= 7
      return puts "Aluno aprovado."
    elsif media < 5
      return puts "Aluno reprovado."
    end
    puts "Aluno em exame."
    recuperation_note = gets.to_f
    puts "Nota do exame: #{format("%.1f", recuperation_note)}"
    result = (media + recuperation_note) / 2
    if result >= 5
      puts "Aluno aprovado."
    else
      puts "Aluno reprovado."
    end
    puts "Media final: #{format("%.1f", result)}"
  end
end
Student.new.approved?