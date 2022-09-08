puts 'Enter a:'
a = gets.to_f
puts 'Enter b:'
b = gets.to_f
puts 'Enter c:'
c = gets.to_f
puts 'Enter d:'
d = gets.to_f
puts 'Enter x:'
x = gets.to_f
puts 'Enter s:'
s = gets.to_i
# print [a, b, c, d, x, s].join(' '), " \n"
# puts 's value is mathematically incorrect' if s < 2
begin 
result = (Math.log(x**3)**2 + 0.375 * d) / (Math.exp(x**2) * Math.sqrt(c + a)) + (Math.tan(Math::PI / 6) - x**(3 / s)) / (0.316 * b * c - a**2).
puts 'Result: ' + result.to_s
rescue
puts "Invalid data input"
end
