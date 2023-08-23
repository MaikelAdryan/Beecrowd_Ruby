module Triangle
  def self.calculate
    side_a, side_b, side_c = gets.split(" ").map(&:to_f)
    return puts "Perimetro = #{calculate_perimeter(side_a, side_b, side_c)}" if form_a_triangle?(side_a, side_b, side_c)
    puts "Area = #{calculate_area(side_a, side_b, side_c)}"
  end
  def self.form_a_triangle? a, b, c
    a < b + c and b < a + c and c < a + b
  end
  def self.calculate_perimeter a, b, c
    perimeter = a + b + c
    format("%.1f", perimeter)
  end
  def self.calculate_area a, b, c
    area = ((a + b) * c) / 2
    format("%.1f", area)
  end
end
Triangle.calculate