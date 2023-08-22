class Distance
  def initialize input1, input2
    @input1 = input1
    @input2 = input2
  end

  def calculate
    x1, y1 = @input1.split(" ").map(&:to_f)
    x2, y2 = @input2.split(" ").map(&:to_f)
    distance = Math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)

    puts format("%.4f", distance)
  end
end

input1 = gets.chomp
input2 = gets.chomp

Distance.new(input1, input2).calculate