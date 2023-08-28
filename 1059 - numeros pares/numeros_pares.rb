(1..100).map do |number|
  puts number if number % 2 == 0
end
# puts (1..100).select(&:even?)