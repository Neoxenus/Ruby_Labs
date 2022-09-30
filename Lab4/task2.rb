# var 2

require 'matrix'

def sum(matrix_1, matrix_2)
  Matrix[*matrix_1] + Matrix[*matrix_2]
end

a = (0...8).map { Array.new(8) }
b = (0...8).map { Array.new(8) }

8.times do |i|
  8.times do |j|
    a[i][j], b[i][j] = i == j ? [1, 1] : [rand(10), rand(10)]
  end
end

p a
p b

p sum(a, b)

