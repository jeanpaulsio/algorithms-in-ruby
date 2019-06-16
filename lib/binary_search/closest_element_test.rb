require_relative '../../test_helper'
require_relative 'closest_element'

class ClosestElementTest < Minitest::Test
  # Edge cases
  def test_empty_array
    actual = ClosestElement.run([], target: 0)
    assert_equal -1, actual
  end

  # Base cases
  def test_single_element_is_equal_to_target
    actual = ClosestElement.run([0], target: 0)
    assert_equal 0, actual
  end

  def test_single_element_is_not_equal_to_target
    actual = ClosestElement.run([100], target: 0)
    assert_equal 0, actual
  end

  # Normal cases
  def test_has_equal_element
    actual = ClosestElement.run([1, 2, 3, 4, 5], target: 3)
    assert_equal 2, actual
  end

  def test_has_no_equal_elements
    actual = ClosestElement.run([1, 2, 3, 6, 7, 8, 9], target: 5)
    assert_equal 3, actual
  end

  def test_has_close_element_in_beginning
    actual = ClosestElement.run([1, 4, 5, 6, 7], target: 2)
    assert_equal 0, actual
  end

  def test_has_close_element_in_end
    actual = ClosestElement.run([4, 5, 6, 9, 10, 100], target: 80)
    assert_equal 5, actual
  end
end
