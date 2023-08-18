class Seller
  def initialize name, salary_fixed, sales_made
    @name = name
    @salary_fixed = salary_fixed
    @sales_made = sales_made
  end

  def calculate_salary_with_bonus
    @sales_made * 0.15 + @salary_fixed
  end

  def to_s
    puts "TOTAL = R$ #{format("%.2f", calculate_salary_with_bonus)}"
  end
end

name = gets.chomp
salary_fixed = gets.chomp.to_f
sales_made = gets.chomp.to_f

Seller.new(name, salary_fixed, sales_made).to_s