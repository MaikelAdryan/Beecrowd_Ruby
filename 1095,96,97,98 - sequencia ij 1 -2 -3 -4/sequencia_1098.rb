i = 0
j = 1
count = 0
while i <= 2.0
  i = i.round(1)
  j = j.round(1)
  i = i.to_i if i == 0 or i == 1.0 or i == 2.0
  j = j.to_i if j == 0 or j == 1.0 or j == 2.0 or j == 3.0 or j == 4.0 or j == 5.0
  puts "I=#{i} J=#{j}"
  count += 1
  j += 1
  if count == 3
    count = 0
    i += 0.2
    j = 1 + i
  end
end