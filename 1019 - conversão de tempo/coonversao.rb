class Clock
  def initialize
    @temp = gets.chomp.to_i
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  def time_conversion
    @temp.times {
      @seconds += 1
      if @seconds >= 60
        @seconds = 0
        @minutes += 1
      end
      if @minutes >= 60
        @minutes = 0
        @hours += 1
      end
    }
    puts "#{@hours}:#{@minutes}:#{@seconds}"
  end
end
Clock.new.time_conversion