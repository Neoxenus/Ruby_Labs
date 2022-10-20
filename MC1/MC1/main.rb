require './my_func'
require './shop'
puts "Enter a, b, c, x_start, x_end, dx:"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
x_start = gets.chomp.to_f
x_end = gets.chomp.to_f
dx = gets.chomp.to_f
include My_func
values(a, b, c, x_start, x_end, dx)
######################################################################
shop = Shop.new([Customer.new(:Surkov, :Vladislav, :Kyrylovich,
                              "77 8th St.Butler, PA 16001", "9722-3222-6096-0202","4243-9722-322-6096-0202"),
                 Customer.new(:Stepaniuk,:Volodymyr, :Borisovich,
                              "7237 Green Hill Street Hagerstown, MD 21740", "2282-2625-4572", "2625-2282-2625-4572"),
                 Customer.new(:Chabaniuk, :Oleksandr, :Romanovich,
                              "59 Creekside St. Owosso, MI 48867", "5270-7287-2953", "2953-5270-7287-2953"),
                 Customer.new(:Havryliuk, :Dmytro, :Illich,
                              "14 Cherry Road Westlake, OH 44145", "9204-5241-1847", "5241-9204-5241-1847"),
                 Customer.new(:Shevchenko, :Taras, :Grigorovich,
                              "82 Tunnel Court Bear, DE 19701", "8206-7821-4928", "8206-8206-7821-4928"),
                 Customer.new(:Shevchenko, :Ivan, :Yakovych,
                              "12 Tunnel Court Bread, ME 23701", "1206-7821-4928", "1306-8206-7821-4228")
                ])
puts "---------------------------------"
puts shop
puts "---------------------------------"
puts shop.list_of_customers
puts "---------------------------------"
puts shop.list_with_card_number_in_range("4243-9722-322-6096-0202", "9206-8206-7821-4928")