require 'minitest/autorun'
require './my_func'
class FuncTest < Minitest::Test
  include My_func
  def test_case0
    a = 1
    b = 0
    c = 0
    x = -5.0
    assert_equal(12,
                 f(a, b, c, x))
  end
  def test_case1
    a = 1.0
    b = 0.0
    c = 0.0
    x = 9.5
    assert_equal(-23,  f(a, b, c, x))
  end
  def test_case2
    a = 1
    b = 1
    c = 1
    x = -6.0
    assert_equal(20,  f(a, b, c, x))
  end
  def test_case3
    a = 1
    b = 1
    c = 1
    x = 5.0
    assert_equal(0.8,  f(a, b, c, x))

  end
  def test_case4
    a = 1
    b = 1
    c = 1
    x_start = 1
    x_end = 1
    dx = 1
  assert_output(stdout = "x: 1.0 f: 0.0\n"){
    values(a, b, c, x_start, x_end, dx)
  }
  end
end
