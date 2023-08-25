module Employee
  def self.increase salary
    reajust = [0.15, 0.12, 0.10, 0.07, 0.04]
    if salary <= 400.00
      puts "Novo salario: " + new_salary(salary, reajust[0])
      puts "Reajuste ganho: " + calculate_reajust(salary, reajust[0])
      puts "Em percentual: #{(reajust[0]*100).round} %"
    elsif salary <= 800.00
      puts "Novo salario: " + new_salary(salary, reajust[1])
      puts "Reajuste ganho: " + calculate_reajust(salary, reajust[1])
      puts "Em percentual: #{(reajust[1]*100).round} %"
    elsif salary <= 1200.00
      puts "Novo salario: " + new_salary(salary, reajust[2])
      puts "Reajuste ganho: " + calculate_reajust(salary, reajust[2])
      puts "Em percentual: #{(reajust[2]*100).round} %"
    elsif salary <= 2000.00
      puts "Novo salario: " + new_salary(salary, reajust[3])
      puts "Reajuste ganho: " + calculate_reajust(salary, reajust[3])
      puts "Em percentual: #{(reajust[3]*100).round} %"
    else
      puts "Novo salario: " + new_salary(salary, reajust[4])
      puts "Reajuste ganho: " + calculate_reajust(salary, reajust[4])
      puts "Em percentual: #{(reajust[4]*100).round} %"
    end
  end
  def self.new_salary salary, reajust
    format("%.2f", salary + salary * reajust)
  end
  def self.calculate_reajust salary, reajust
    format("%.2f", salary * reajust)
  end
end
salary = gets.chomp.to_f
Employee.increase salary