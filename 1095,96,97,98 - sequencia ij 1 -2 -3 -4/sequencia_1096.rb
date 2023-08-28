i = 1
j = 7
while i <= 9
  puts "I=#{i} J=#{j}"
  j -= 1
  if j < 5
    j = 7
    i += 2
  end
end