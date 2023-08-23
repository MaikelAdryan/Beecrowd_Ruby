class SnackBar
  def initialize
    @id_item, @quantity = gets.chomp.split(" ").map(&:to_i)
    @prices = [4.00, 4.50, 5.00, 2.00, 1.50]
  end
  def calculate_total
    total = @prices[@id_item - 1] * @quantity
    puts "Total: R$ #{format("%.2f", total)}"
  end
end
SnackBar.new.calculate_total