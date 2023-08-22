class Area
  def initialize side_one, side_two, side_three
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @PI = 3.14159;
  end

  def triangle
    result = (@side_one * @side_three) / 2
    return "TRIANGULO: #{format("%.3f", result)}\n"
  end

  def circle
    result = (@side_three ** 2) * @PI
    "CIRCULO: #{format("%.3f", result)}\n"
  end

  def trapeze
    result = ((@side_one + @side_two) * @side_three) / 2
    "TRAPEZIO: #{format("%.3f", result)}\n"
  end

  def square
    result = @side_two * @side_two
    "QUADRADO: #{format("%.3f", result)}\n"
  end

  def rectangle
    result = @side_one * @side_two
    "RETANGULO: #{format("%.3f", result)}"
  end

  def to_s
    puts "#{triangle}#{circle}#{trapeze}#{square}#{rectangle}"
  end
end
sides = gets.chomp.split(" ")

side_one = sides[0].to_f
side_two = sides[1].to_f
side_three = sides[2].to_f

Area.new(side_one, side_two, side_three).to_s