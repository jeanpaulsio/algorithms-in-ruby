require_relative '../../test_helper'
require_relative 'first_duplicate'

class FirstDuplicateTest < Minitest::Test
  # Edge cases
  def test_empty_array
    actual = FirstDuplicate.run([], target: 3)
    assert_equal -1, actual
  end

  def test_nil_input
    actual = FirstDuplicate.run(nil, target: 3)
    assert_equal -1, actual
  end

  # Base cases
  def test_single_element_not_present
    actual = FirstDuplicate.run([0], target: 1)
    assert_equal -1, actual
  end

  def test_single_element_is_present
    actual = FirstDuplicate.run([1], target: 1)
    assert_equal 0, actual
  end

  # Regular cases
  def test_all_elements_are_the_same
    actual = FirstDuplicate.run([1, 1, 1, 1, 1, 1], target: 1)
    assert_equal 0, actual
  end

  def test_no_duplicate_elements
    actual = FirstDuplicate.run([0, 1, 2, 3, 4, 5], target: 6)
    assert_equal -1, actual
  end

  def test_duplicate_element_exists
    actual = FirstDuplicate.run([0, 1, 2, 6, 6, 7, 8, 9], target: 6)
    assert_equal 3, actual
  end

  def test_duplicate_element_exists_towards_beginning
    actual = FirstDuplicate.run([0, 0, 2, 6, 6, 7, 8, 9], target: 0)
    assert_equal 0, actual
  end

  def test_duplicate_element_exists_towards_end
    actual = FirstDuplicate.run([1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9], target: 9)
    assert_equal 9, actual
  end
end
