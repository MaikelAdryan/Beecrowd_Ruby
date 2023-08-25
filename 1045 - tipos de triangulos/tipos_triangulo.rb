module Triangle
  def self.types sides
    side_a, side_b, side_c = sides.split(" ").map(&:to_f).sort.reverse
    return puts "NAO FORMA TRIANGULO" if side_a >= side_b + side_c
    puts "TRIANGULO RETANGULO" if side_a ** 2 == side_b ** 2 + side_c ** 2
    puts "TRIANGULO OBTUSANGULO" if side_a ** 2 > side_b ** 2 + side_c ** 2
    puts "TRIANGULO ACUTANGULO" if side_a ** 2 < side_b ** 2 + side_c ** 2
    return puts "TRIANGULO EQUILATERO" if side_a == side_b and side_a == side_c
    puts "TRIANGULO ISOSCELES" if side_a == side_b or side_a == side_c or side_b == side_c
  end
end
sides = gets.chomp
Triangle.types(sides)