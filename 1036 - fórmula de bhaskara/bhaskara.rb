class Bhaskara
  def initialize
    @a, @b, @c = gets.chomp.split(" ").map(&:to_f)
  end
  def calculate
    delt = (@b ** 2) - 4 * @a * @c
    return puts "Impossivel calcular" if delt < 0 or @a == 0
    result = (-@b + Math.sqrt(delt)) / (2 * @a)
    puts "R1 = #{format("%.5f", result)}"
    result = (-@b - Math.sqrt(delt)) / (2 * @a)
    puts "R2 = #{format("%.5f", result)}"
  end
end
Bhaskara.new.calculate
