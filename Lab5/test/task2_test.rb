require 'minitest/autorun'
require './task2'
class Task2Test < Minitest::Test
  def test_task1_case0
    assert_equal(-0.5,
                 sum(1))
  end
  def test_task1_case1
    assert_equal(-0.125,
                 sum(2))
  end
  def test_task1_case2
    assert_in_epsilon(-0.1505, sum, EPSILON)
  end
end
