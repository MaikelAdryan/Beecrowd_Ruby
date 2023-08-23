module Sort
  def self.crescent
    @array = gets.split(" ").map(&:to_i)
    @array.sort.each{|number|
      puts number
    }
    puts ""
    @array.each{|number|
      puts number
    }
  end
end
Sort.crescent