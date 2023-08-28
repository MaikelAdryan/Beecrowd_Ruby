values = []
for i in 0..100 do
  values << gets.chomp.to_i
end
puts values.max
puts values.index(values.max)+1
