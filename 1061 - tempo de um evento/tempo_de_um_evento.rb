start_day = gets.chomp.split(" ")[1].to_i
start_hms = gets.chomp.split(":").map(&:to_i)
start_hour, start_minute, start_second = start_hms
end_day = gets.chomp.split(" ")[1].to_i
end_hms = gets.chomp.split(":").map(&:to_i)
end_hour, end_minute, end_second = end_hms

duration_day = 0
duration_hour = 0
duration_minute = 0
duration_second = 0

while start_second != end_second
  duration_second += 1
  start_second += 1
  if start_second == 60
    start_second = 0
    start_minute += 1
  end
  if duration_second == 60
    duration_second = 0
    duration_minute += 1
  end
end
while start_minute != end_minute
  duration_minute += 1
  start_minute += 1
  if start_minute == 60
    start_minute = 0
    start_hour += 1
  end
  if duration_minute == 60
    duration_minute = 0
    duration_hour += 1
  end
end
while start_hour != end_hour
  duration_hour += 1
  start_hour += 1
  if start_hour == 24
    start_hour = 0
    start_day += 1
  end
  if duration_hour == 24
    duration_hour = 0
    duration_day += 1
  end
end
while start_day != end_day
  duration_day += 1
  start_day += 1
end

puts "#{duration_day} dia(s)"
puts "#{duration_hour} hora(s)"
puts "#{duration_minute} minuto(s)"
puts "#{duration_second} segundo(s)"