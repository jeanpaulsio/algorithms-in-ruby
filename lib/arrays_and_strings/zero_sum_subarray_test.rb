require_relative '../../test_helper'
require_relative 'zero_sum_subarray'

class ZeroSumSubarrayTest < Minitest::Test
  def test_empty_array
    assert_nil ZeroSumSubarray.run([])
  end

  def test_nil_input
    assert_nil ZeroSumSubarray.run(nil)
  end

  def test_single_element_is_zero
    assert_equal [0, 0], ZeroSumSubarray.run([0])
  end

  def test_single_positive_element
    assert_nil ZeroSumSubarray.run([1])
  end

  def test_single_negative_element
    assert_nil ZeroSumSubarray.run([-1])
  end
  
  def test_base_case_has_sum
    arr = [2, 4, -2, 1, -3, 5, -3]
    expected = [1, 4]
    assert_equal expected, ZeroSumSubarray.run(arr)
  end

  def test_base_case_has_no_sum
    arr = [2, 4, -3]
    assert_nil ZeroSumSubarray.run(arr)
  end

  def test_base_case_has_sum_at_beginning_of_array
    arr = [1, -1, 2, 3, 4, 5, 6, 6]
    expected = [0, 1]
    assert_equal expected, ZeroSumSubarray.run(arr)
  end

  def test_base_case_has_sum_at_end_of_array
    arr = [1, 2, 3, 4, 5, 6, -6]
    expected = [5, 6]
    assert_equal expected, ZeroSumSubarray.run(arr)
  end
end