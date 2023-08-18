class Purchase
  def initialize quantity_one, value_one, quantity_two, value_two
    @quantity_one = quantity_one
    @value_one = value_one
    @quantity_two = quantity_two
    @value_two = value_two
  end

  def calculate_total_amount
    result = @quantity_one * @value_one + @quantity_two * @value_two
    format("%.2f", result)
  end

  def to_s
    puts "VALOR A PAGAR: R$ #{calculate_total_amount}"
  end
end

piece_one = gets.chomp.split(" ")
piece_two = gets.chomp.split(" ")

code_piece_one = piece_one[0].to_i
quantity_piece_one = piece_one[1].to_i
unit_value_piece_one = piece_one[2].to_f

code_piece_two = piece_two[0].to_i
quantity_piece_two = piece_two[1].to_i
unit_value_piece_two = piece_two[2].to_f

Purchase.new(quantity_piece_one, unit_value_piece_one, quantity_piece_two, unit_value_piece_two).to_s