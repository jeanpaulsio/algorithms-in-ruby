require_relative '../../test_helper'
require_relative 'cyclically_sorted_min'

class CyclicallySortedMinTest < Minitest::Test
  def test_empty_array
    actual = CyclicallySortedMin.run([])
    assert_equal -1, actual
  end

  def test_one_element
    actual = CyclicallySortedMin.run([1])
    assert_equal 0, actual
  end

  def test_two_elements_not_rotated
    actual = CyclicallySortedMin.run([1, 2])
    assert_equal 0, actual
  end

  def test_two_elements_not_rotated
    actual = CyclicallySortedMin.run([4, 3])
    assert_equal 1, actual
  end

  def test_non_cyclically_sorted_array
    actual = CyclicallySortedMin.run([0, 1, 2, 3, 4, 5, 6])
    assert_equal 0, actual
  end

  def test_cyclically_sorted_array
    actual = CyclicallySortedMin.run([3, 4, 5, 6, 0, 1, 2])
    assert_equal 4, actual
  end

  def test_cyclically_sorted_array_min_value_at_end
    actual = CyclicallySortedMin.run([3, 4, 5, 6, 7, 8, 2])
    assert_equal 6, actual
  end
end
