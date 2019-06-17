require_relative '../../test_helper'
require_relative 'array_peak'

class ArrayPeakTest < Minitest::Test
  # Corner cases
  def test_empty_array
    assert_nil ArrayPeak.run([])
  end
  
  def test_single_element
    actual = ArrayPeak.run([1])
    assert_equal 1, actual
  end
  
  def test_two_elements_in_array_ascending
    actual = ArrayPeak.run([0, 1])
    assert_equal 1, actual
  end

  def test_two_elements_in_array_descending
    actual = ArrayPeak.run([1, 0])
    assert_equal 1, actual
  end
  
  def test_first_element_is_peak
    actual = ArrayPeak.run([5, 3, 1])
    assert_equal 5, actual
  end

  def test_last_element_is_peak
    actual = ArrayPeak.run([1, 2, 3])
    assert_equal 3, actual
  end

  # Normal cases
  def test_normal_case
    actual = ArrayPeak.run([5, 10, 20, 15, 16, 17, 18, 15])
    assert_equal 20, actual
  end
end
