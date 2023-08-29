def calculate m, n
  result = ""
  if m < n
    (m..n).map{|number|
      result += "#{number} "
    }
    puts result += "Sum=#{(m..n).sum}"
  else
    (n..m).map{|number|
      result += "#{number} "
    }
    puts result += "Sum=#{(n..m).sum}"
  end
end
yes = true
while yes
  m, n = gets.chomp.split(" ").map(&:to_i)
  (m <= 0 or n <= 0) ? yes = false : calculate(m, n)
end
