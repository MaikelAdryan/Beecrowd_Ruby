input = gets.chomp.to_i
input.times{
  input = gets.chomp.to_i
  if input == 0
    puts "NULL"
  elsif input < 0
    puts "ODD NEGATIVE" if input % 2 != 0
    puts "EVEN NEGATIVE" if input % 2 == 0
  else
    puts "ODD POSITIVE" if input % 2 != 0
    puts "EVEN POSITIVE" if input % 2 == 0
  end
}