# var 9
def area (dots)
  s = 0
  (0...dots.length - 1).each { |i|
    s += (dots[i][0] + dots[i + 1][0]) * (dots[i][1] - dots[i + 1][1])
  }
  s += (dots[dots.length - 1][0] + dots[0][0]) * (dots[dots.length - 1][1] - dots[0][1])
  s.abs / 2
end

def range (p, t, r)
  ((p ** r) * (1 - p **  (-t))).round
end

def bin_to_dex(bin)
  bin.to_s(10)
end

def dex_to_bin(dex)
  dex.to_s(2)
end

dots = [[414,42], [274,45], [190,34], [132,21], [72,54],
        [56,107], [42,152], [60,221], [108,252], [156,285],
        [204,307], [247,304], [296,303], [359,304], [403,303],
        [452,294], [464,255], [461,223], [460,193], [466,173],
        [437,156], [386,146], [348,121], [353,86], [371,75],
        [410,70], [422,52]]

puts area(dots)
puts range(3, 8, 0)
puts bin_to_dex(0b1000010010010)
puts dex_to_bin(145)
