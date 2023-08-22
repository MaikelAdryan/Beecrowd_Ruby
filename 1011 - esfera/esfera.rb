class Sphare
  def initialize radius
    @radius = radius
    @PI = 3.14159
  end

  def calculate_volume_of_sphere
    result = (4.0 / 3) * @PI * @radius ** 3
    format("%.3f", result)
  end

  def to_s
    puts "VOLUME = #{calculate_volume_of_sphere}"
  end
end

radius = gets.chomp.to_f

Sphare.new(radius).to_s