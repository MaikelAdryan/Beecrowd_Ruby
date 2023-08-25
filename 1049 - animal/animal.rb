is = gets.chomp
if is == "vertebrado"
  is = gets.chomp
  if is == "ave"
    is = gets.chomp
    if is == "carnivoro"
      puts "aguia"
    else
      puts "pomba"
    end
  else
    is = gets.chomp
    if is == "onivoro"
      puts "homem"
    else
      puts "vaca"
    end
  end
else
  is = gets.chomp
  if is == "inseto"
    is = gets.chomp
    if is == "hematofago"
      puts "pulga"
    else
      puts "lagarta"
    end
  else
    is = gets.chomp
    if is == "hematofago"
      puts "sanguessuga"
    else
      puts "minhoca"
    end
  end
end
