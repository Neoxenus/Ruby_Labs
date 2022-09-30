require 'minitest/autorun'
require './task3'


class TestTask3 < Minitest::Test

  def test_task3_case0
    assert_equal(Vector[(5/1), (2/1), (3/1)],
                 solution(Matrix[[1, 0, 0], [0, 1, 0], [0, 0, 1]], Vector[5, 2, 3]))
  end
  def test_task3_case1
    assert_equal(Vector[11.0 / 28, 1.0 / 7, -3.0 / 28],
                 solution(Matrix[[2, 6, 6], [6, 2, 6], [6, 6, 2]], Vector[1, 2, 3]))
  end

  def test_task3_case2

    assert_equal(Vector[0.5, 0.25, 0, -0.25],
                 solution(Matrix[[2, 6, 6, 6], [6, 2, 6, 6], [6, 6, 2, 6], [6, 6, 6, 2]], Vector[1, 2, 3, 4]))
  end

  def test_task3_case3
    assert_equal(Vector[47.0 / 64, 31.0 / 64, 15.0 / 64, -1.0 / 64, -17.0 / 64, -33.0 / 64],
                 solution(
                   Matrix[[2, 6, 6, 6, 6, 6], [6, 2, 6, 6, 6, 6], [6, 6, 2, 6, 6, 6], [6, 6, 6, 2, 6, 6], [6, 6, 6, 6, 2, 6],
                          [6, 6, 6, 6, 6, 2]], Vector[1, 2, 3, 4, 5, 6]))
  end

end


