include Math

# task 1.1
A = true
B = true
C = false
X = 12
Y = 3
Z = -2
puts "1.1)"
puts "a: " + (!(A || B) && (A && !B)).to_s
#puts true.object_id >= false.object_id
puts "b: " + ((Z != Y).object_id <= (6 >= Y).object_id && A || B && C && X >= 1.5).to_s
puts "c: " + ((8 - X * 2 <= Z) && (X ** 2 >= Y ** 2) || (Z >= 15)).to_s
puts "d: " + (X > 0 && Y < 0 || Z >= (X * Y - Y / X) - (-Z)).to_s
puts "e: " + (!(A || B && !(C || (!A || B)))).to_s
puts "f: " + (X ** 2 + Y ** 2 >= 1 && X >= 0 && Y >= 0).to_s
puts "g: " + ((A && (C && B != B || A) || C) && B).to_s
#task 1.2
x = 4
P = false
puts "@@@@@@@@@@@@@@@@@@@@@@@@"
puts "1.2)"
puts log(x)<x && !P && (sqrt(x) > x * x) || (2 * x == x)
puts "#####################################"
#task 2
puts "2)"
puts "Enter x: "
x = gets.chomp.to_f
case x
when -4..0
  y = (((x-2).abs / ((x ** 2) * cos(x)))**(1.0/7))
when 0..12
  y = 1 / ((tan(x + 1 / exp(x)) / sin(x)**2)**(2.0/7))
else
  y = 1 / (1 + x / (1 + x / (1 + x)))
end

if -4 <= x && x <= 0
  y1 = ((x-2).abs / ((x ** 2) * cos(x)))**(1.0/7)
elsif 0 < x && x <= 12
  y1 = 1 / ((tan(x + 1 / exp(x)) / sin(x)**2)**(2.0/7))
else
  y1 = 1 / (1 + x / (1 + x / (1 + x)))
end
print y, " ", y1, "\n"

puts "#####################################"
#task 3
n = 0
puts "3)"
#enter n for task 2
while n <= 0
  puts "Enter n: "
  n = gets.chomp.to_i
  puts "incorrect input" unless n > 0
end

def sin_sum(n)
  (1..n).sum { |k| 1 / (1..k).sum { |i| sin(i) } }
end

def sqrt_sum (n)
  n > 1 ? sqrt(2 + sqrt_sum(n - 1)) : sqrt(2)
end

puts "3.4:"
puts sin_sum(n)
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
puts "3.5:"
puts sqrt_sum(n)

def factorial(var)
  var > 1 ? var * factorial(var - 1) : 1.0
end
puts "#####################################"
#task 4
puts "4)"
puts "4.1:"
EPSILON = 0.00001
n = 2
sum = 0
loop do
  x = (1.0 * factorial(2 * n - 1) / (factorial(2 * n + 1))) ** ((n+1) * n)
  sum += x
  n += 1
  break if x.abs < EPSILON
end
puts sum
puts "@@@@@@@@@@@@@@@@@@@@@@@@"
puts "4.2:"
def endless_pi_sum
  n = 1
  sum = 0
  loop do
    sum += (2
    (-1.0)**(n-1))/(2.0 * n - 1)
    #puts sum
    n += 1
    break if 1.0/(2 * n - 1) < EPSILON
  end
  sum
end
puts  (PI / 4 - endless_pi_sum).abs < EPSILON
puts "@@@@@@@@@@@@@@@@@@@@@@@@@"
puts "4.3:"
n = 1
sum = 0
loop do
  x = factorial(3*n-1) * factorial(2 * n - 1) / (factorial(4 * n) * (3 ** (2*n)) * factorial(2*n))
  sum += x
  n += 1
  break if x.abs < EPSILON
end
puts sum
puts "#####################################"
#task 5
puts "5)"
n = 10
c = 5.0
x = 1.0
puts "5.1:"
(1..n+c).each do|i|
  y = (x**2 + x * (x**2-c**2)**(1.0/2))**(1.0/n) + (x**2 + 1)/(1/x + 1.0/n) + (3*x + c**x)/(x+1)
  print i, ": ",x, " ", y,"\n"
  x += (n-1) / (n+c-1).to_f
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
puts "5.2:"
x = (PI / n).to_f
(1..(3.0 * n / 2 + c)).each do|i|
  z = 2*((sin(4 * x)**(-1)) - tan(7 * PI / 2 + 4 * x)) + tan(5 * PI + x)
  print i, ": ",x, " ", z,"\n"
  x += ((PI - (PI / n)) / (3 * n /2 + c - 1))
end
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
puts "5.3:"
x = 2.0

(1..n).each do |i|
  y = (x**2 + x * (x**2-c**2)**(1.0/2))**(1.0/n) + (x**2 + 1)/(1/x + 1.0/n) + (3*x + c**x)/(x+1)
  print i, ": ",x, " ", y,"\n"
  x += (c - 2.0) / (2 * n - 1)

end
((n + 1).to_i..2 * n).each do |i|
  z = 2 * ((sin(4 * x)**(-1)) - tan(7 * PI / 2 + 4 * x)) + tan(5 * PI + x)
  print i, ": ", x, " ", z,"\n"
  x += (c - 2.0) / (2 * n - 1)
end
