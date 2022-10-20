module My_func
  def f(a, b, c, x)

    res =
      if x + 5 < 0 && c == 0
        1 / (a * x) - b
      elsif  x + 5 > 0 && c != 0
        (x - a) /  x
      else
        10 * x / (c - 4)
      end

    if ((a.to_i & b.to_i) | (b.to_i & c.to_i)) != 0
      res.to_f
    else
      res.to_i
    end

  end
  def values (a, b, c, x_start, x_end, dx)
    if x_start > x_end
      x_start, x_end = x_end, x_start
    end
    dx = dx.abs

    x = x_start.to_f
    while x <= x_end
      puts "x: " + x.to_s + " f: " + f(a, b, c, x).to_s
      x += dx
      break if dx == 0
    end
  end
end
