gets.chomp.to_i.times{
  a, b = gets.chomp.split(" ").map(&:to_i)
  (a..b).map{|i| p i}
}