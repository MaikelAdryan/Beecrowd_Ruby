class Ballots
  def initialize
    @amount_ballots = gets.chomp.to_i
  end

  def calculate_amount_ballots
    notes_100 = 0
    puts "#{@amount_ballots}\n"
    while @amount_ballots >= 100
      @amount_ballots -= 100
      notes_100 += 1
    end
    puts "#{notes_100} nota(s) de R$ 100,00\n"
    
    notes_50 = 0
    while @amount_ballots >= 50
      @amount_ballots -= 50
      notes_50 += 1
    end
    puts "#{notes_50} nota(s) de R$ 50,00\n"
    
    notes_20 = 0
    while @amount_ballots >= 20
      @amount_ballots -= 20
      notes_20 += 1
    end
    puts "#{notes_20} nota(s) de R$ 20,00\n"
    
    notes_10 = 0
    while @amount_ballots >= 10
      @amount_ballots -= 10
      notes_10 += 1
    end
    puts "#{notes_10} nota(s) de R$ 10,00\n"
    
    notes_5 = 0
    while @amount_ballots >= 5
      @amount_ballots -= 5
      notes_5 += 1
    end
    puts "#{notes_5} nota(s) de R$ 5,00\n"
    
    notes_2 = 0
    while @amount_ballots >= 2
      @amount_ballots -= 2
      notes_2 += 1
    end
    puts "#{notes_2} nota(s) de R$ 2,00\n"
    
    notes_1 = 0
    while @amount_ballots >= 1
      @amount_ballots -= 1
      notes_1 += 1
    end
    puts "#{notes_1} nota(s) de R$ 1,00\n"
  end
end

Ballots.new.calculate_amount_ballots