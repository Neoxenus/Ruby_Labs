# var 2
def array_sum(arr)
  print arr, "\n"
  res_even = 0
  arr.each { |x| res_even += (x.to_i % 2 == 0 ? x.to_i : 0) }
  res_index = 0
  arr.each_with_index { |x, i| res_index += (x.to_i % 2 == 0 ? i : 0) }
  [res_even, res_index]
end
puts array_sum(Array.new(16) { rand(-1000.0..1000.0) })