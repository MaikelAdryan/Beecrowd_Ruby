inside = 0
outside = 0
gets.chomp.to_i.times{
  input = gets.chomp.to_i
  if input >= 10 and input <= 20
    inside += 1
  else
    outside += 1
  end
}
puts "#{inside} in"
puts "#{outside} out"