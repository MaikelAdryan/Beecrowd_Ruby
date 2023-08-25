module Game
  def self.duration time
    start_hour, start_minutes, end_hour, end_minutes = time.split(" ").map(&:to_i)
    duration_hours = 0
    duration_minutes = 0
    return to_s(24, 0) if start_hour == end_hour and start_minutes == end_minutes
    while start_minutes != end_minutes
      duration_minutes += 1
      start_minutes += 1
      if start_minutes == 60
        start_minutes = 0
        start_hour += 1
      end
    end
    while start_hour != end_hour
      duration_hours += 1
      start_hour += 1
      start_hour = 0 if start_hour == 24
    end
    to_s(duration_hours, duration_minutes)
  end

  def self.to_s hours, minutes
    puts "O JOGO DUROU #{hours} HORA(S) E #{minutes} MINUTO(S)"
  end
end
time = gets.chomp
Game.duration time