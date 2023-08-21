class Number
  def initialize numbers
    @numbers = numbers
  end

  def which_is_the_bigger?
    a, b, c = @numbers.split(" ").map(&:to_i)
    begger = (a + b + (a - b).abs) / 2
    result = (begger + c + (begger - c).abs) / 2
    puts "#{result} eh o maior"
  end
end

input = gets.chomp
Number.new(input).which_is_the_bigger?