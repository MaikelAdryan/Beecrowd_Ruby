module DDD
  def self.destination? ddd
    case ddd
    when 61
      puts "Brasilia"
    when 71
      puts "Salvador"
    when 11
      puts "Sao Paulo"
    when 21
      puts "Rio de Janeiro"
    when 32
      puts "Juiz de Fora"
    when 19
      puts "Campinas"
    when 27
      puts "Vitoria"
    when 31
      puts "Belo Horizonte"
    else
      puts "DDD nao cadastrado"
    end
  end
end
ddd = gets.chomp.to_i
DDD.destination? ddd