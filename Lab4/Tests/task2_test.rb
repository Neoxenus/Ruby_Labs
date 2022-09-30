require 'minitest/autorun'
require './task2'

class TestTask2 < Minitest::Test
  def test_task2_case0
    assert_equal(Matrix[[12, 7, 9], [8, 11, 3], [11, 11, 7]],
                 sum([[7, 4, 5], [1, 9, 2], [5, 8, 4]],
                     [[5, 3, 4], [7, 2, 1], [6, 3, 3]] )
                 )
  end
  def test_task2_case1
    assert_equal(Matrix[[6, 11, 12, 12], [8, 11, 5, 12], [5, 15, 9, 10], [6, 3, 13, 9]],
                 sum( [[2, 7, 5, 9], [4, 3, 1, 4], [2, 7, 4, 3], [5, 1, 7, 2]],
                      [[4, 4, 7, 3], [4, 8, 4, 8], [3, 8, 5, 7], [1, 2, 6, 7]])
                 )
  end
end

