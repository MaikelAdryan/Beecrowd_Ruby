gets.chomp.to_i.times{ |a, b, total|
  total = 0
  a, b = gets.chomp.split(" ").map(&:to_i)
  if a < b
    while a < b
      a += 1
      total += a if a != b and a.odd?
    end
    puts total
  else
    while b < a
      b += 1
      total += b if b != a and b.odd?
    end
    puts total
  end
}