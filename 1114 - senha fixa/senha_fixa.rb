password = 2002
choose_password = gets.chomp.to_i
while choose_password != password
  puts "Senha Invalida"
  choose_password = gets.chomp.to_i
end
puts "Acesso Permitido"