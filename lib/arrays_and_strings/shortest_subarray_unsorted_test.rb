require_relative '../../test_helper'
require_relative 'shortest_subarray_unsorted'

class ShortestSubarrayUnsortedTest < Minitest::Test
  def test_base_case_01
    expected = [2, 4]
    actual = ShortestSubarrayUnsorted.run [1, 2, 4, 5, 3, 5, 6, 7, 9]
    assert_equal expected, actual
  end

  def test_base_case_02
    expected = [1, 5]
    actual = ShortestSubarrayUnsorted.run [1, 3, 5, 2, 6, 4, 7, 8, 9]
    assert_equal expected, actual
  end

  def test_subarray_reaches_end
    expected = [1, 8]
    actual = ShortestSubarrayUnsorted.run [1, 3, 5, 2, 10, 8, 7, 8, 9]
    assert_equal expected, actual
  end

  def test_sorted_array
    actual = ShortestSubarrayUnsorted.run [1, 2, 3, 4, 5]
    assert_nil actual
  end

  def test_three_items
    expected = [0, 1]
    actual = ShortestSubarrayUnsorted.run [1, 0, 3]
    assert_equal expected, actual
  end
end
