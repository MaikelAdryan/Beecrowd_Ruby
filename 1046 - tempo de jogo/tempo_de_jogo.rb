module Game
  def self.duration time
    time_start, time_end = time.split(" ").map(&:to_i)
    duration = 0
    return puts "O JOGO DUROU 24 HORA(S)" if time_start == time_end
    while time_start != time_end
      duration += 1
      time_start += 1
      time_start = 0 if time_start == 24
    end
    puts "O JOGO DUROU #{duration} HORA(S)"
  end
end
time = gets.chomp
Game.duration time