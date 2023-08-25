module Peaple
  def self.calculate_income_tax! salary
    return puts "Isento" if salary <= 2000.00
    if salary <= 3000.00
      tax = (salary - 2000) * 0.08
      puts "R$ #{format("%.2f", tax)}"
    elsif salary <= 4500.00
      tax = (salary - 2000) - 1000
      tax = 1000 * 0.08 + tax * 0.18
      puts "R$ #{format("%.2f", tax)}"
    else
      tax = (salary - 2000) - 2500
      tax = 1000 * 0.08 + 1500 * 0.18 + tax * 0.28 
      puts "R$ #{format("%.2f", tax)}"
    end
  end
end
salary = gets.chomp.to_f
Peaple.calculate_income_tax! salary