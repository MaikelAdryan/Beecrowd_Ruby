i = 1
j = 7
count = 0
while i <= 9
  puts "I=#{i} J=#{j}"
  count += 1
  j -= 1
  if count == 3
    count = 0
    i += 2
    j += 5
  end
end