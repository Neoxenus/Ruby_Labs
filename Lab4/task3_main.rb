require './task3'
n = nil

loop do
  puts "Enter n (n >= 3 and n <= 9):"
  n = gets.chomp.to_i
  break if n.between?(3, 9)
end

a = (0...n).map { Array.new(n) }

n.times do |i|
  n.times do |j|
    a[i][j] = i == j ? Rational(2) : Rational(4)
  end
end

a_matrix = Matrix[*a]

b_vec = Vector[*(1..n)]

p a_matrix
p b_vec

solution = solution(a_matrix, b_vec)
p solution