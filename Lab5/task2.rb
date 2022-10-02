EPSILON = 0.001
def factorial(var)
  var > 1 ? var * factorial(var - 1) : 1.0
end
def func(i)
  (-1.0) ** i * (2.0 * (i**2.0) + 1.0) / factorial(2.0 * i)
end
def sum(n = 0)
  sum = 0.0
  if n <= 0
    i = 0.0
    loop do
      sum += func(i)
      break if func(i).abs < EPSILON
      i+=1
    end
  else
  (0..n).each { |i|
    sum += func(i.to_f)
    }
  end
  sum
end