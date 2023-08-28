c = 0
r = 0
s = 0
gets.chomp.to_i.times{
  input = gets.chomp.split(" ")
  case input[1]
  when "C"
    c += input[0].to_i
  when "R"
    r += input[0].to_i
  when "S"
    s += input[0].to_i
  end
}
total = c + r + s
output = <<-END
Total: #{total} cobaias
Total de coelhos: #{c}
Total de ratos: #{r}
Total de sapos: #{s}
Percentual de coelhos: #{format("%.2f",(c.to_f / total ) * 100)} %
Percentual de ratos: #{format("%.2f",(r.to_f / total ) * 100)} %
Percentual de sapos: #{format("%.2f",(s.to_f / total ) * 100)} %
END
puts output