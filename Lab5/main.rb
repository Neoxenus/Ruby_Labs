require './task1'
require './task2'
include Math
def f1(x)
  sqrt(2.0 ** x - 1)
end
def f2(x)
  asin(sqrt(x))/sqrt(x * (1-x))
end

puts integrate_rectangular(0.3,1.0, 1000) {|x| f1(x) }
puts integrate_trapezoidal(0.3,1.0, 1000) {|x| f1(x) }

puts integrate_rectangular(0.2,0.3, 1000) {|x| f2(x) }
puts integrate_trapezoidal(0.2,0.3, 1000) {|x| f2(x) }, "\n"
puts sum(16)
puts sum(58)
puts sum
