class CartesianPlane
  def initialize
    @x, @y = gets.split(" ").map(&:to_f)
  end
  def discover_quadrant
    return puts "Origem" if @x == 0 and @y == 0
    return puts "Eixo X" if @y == 0
    return puts "Eixo Y" if @x == 0
    if @y > 0 and @x > 0
      return puts "Q1"
    elsif @y > 0 and @x < 0
      return puts "Q2"
    elsif @y < 0 and @x < 0
      return puts "Q3"
    end
    puts "Q4"
  end
end
CartesianPlane.new.discover_quadrant