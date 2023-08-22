class Money
  def initialize
    @amount_money = gets.chomp.to_f
    @notes_and_coins = [100, 50, 20, 10, 5, 2, 1, 0.50, 0.25, 0.10, 0.05, 0.01]
  end

  def quantity_notes value, note
    (value.to_f / note.to_f).to_i
  end

  def to_s
    puts "NOTAS:\n"
    puts "#{quantity_notes(@amount_money, 100)} nota(s) de R$ 100.00\n"
    @amount_money %= 100
    puts "#{quantity_notes(@amount_money, 50)} nota(s) de R$ 50.00\n"
    @amount_money %= 50
    puts "#{quantity_notes(@amount_money, 20)} nota(s) de R$ 20.00\n"
    @amount_money %= 20
    puts "#{quantity_notes(@amount_money, 10)} nota(s) de R$ 10.00\n"
    @amount_money %= 10
    puts "#{quantity_notes(@amount_money, 05)} nota(s) de R$ 5.00\n"
    @amount_money %= 05
    puts "#{quantity_notes(@amount_money, 02)} nota(s) de R$ 2.00\n" 
    @amount_money %= 02
    puts "MOEDAS:\n"
    puts "#{quantity_notes(@amount_money, 1)} moeda(s) de R$ 1.00\n"
    @amount_money %= 01
    puts "#{quantity_notes(@amount_money, 0.50)} moeda(s) de R$ 0.50\n"
    @amount_money %= 0.50
    puts "#{quantity_notes(@amount_money, 0.25)} moeda(s) de R$ 0.25\n"
    @amount_money %= 0.25
    puts "#{quantity_notes(@amount_money, 0.10)} moeda(s) de R$ 0.10\n"
    @amount_money %= 0.10
    puts "#{quantity_notes(@amount_money, 0.05)} moeda(s) de R$ 0.05\n"
    @amount_money %= 0.05
    puts "#{(@amount_money / 0.01).round(0)} moeda(s) de R$ 0.01"
  end

end

Money.new.to_s