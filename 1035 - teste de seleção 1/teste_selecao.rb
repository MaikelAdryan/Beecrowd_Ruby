class Selection
  def initialize
    @a, @b, @c, @d = gets.chomp.split(" ").map(&:to_i)
  end
  def valid?
    if @b > @c and @d > @a and @c + @d > @a + @b and @c > 0 and @d > 0 and @a % 2 == 0
      puts "Valores aceitos"
    else
      puts "Valores nao aceitos"
    end
  end
end
Selection.new.valid?