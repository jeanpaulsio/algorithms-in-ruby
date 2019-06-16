require_relative '../../test_helper'
require_relative 'sliding_window'

class SlidingWindowTest < Minitest::Test
  def test_empty_array
    assert_nil SlidingWindow.run([], target: 1)
  end

  def test_nil_input
    assert_nil SlidingWindow.run(nil, target: 1)
  end

  def test_single_element_greater_than_target
    assert_nil SlidingWindow.run([5], target: 1)
  end

  def test_single_element_equals_target
    assert_equal [0, 0], SlidingWindow.run([5], target: 5)
  end

  def test_array_with_multiple_elements
    arr = [13, 1, 4, 5, 3, 5, 1, 2, 4]
    assert_equal [2, 4], SlidingWindow.run(arr, target: 12)
  end
end
