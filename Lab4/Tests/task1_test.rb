require 'minitest/autorun'
require './task1'

class TestTask1 < Minitest::Test
  def test_task1_case0
    assert_equal([6, 4],
                 array_sum([7, 4, 5, 2]))
  end
  def test_task1_case1
    assert_equal([10, 6],
                 array_sum([-2, 0, 10, 2]))
  end
  def test_task1_case2
    assert_equal([0, 0],
                 array_sum([1,1,1,1,1]))
  end
end


