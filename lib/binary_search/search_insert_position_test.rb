require_relative '../../test_helper'
require_relative 'search_insert_position'

class SearchInsertPositionTest < Minitest::Test
  # Edge cases
  def test_empty_array_inserts_at_0th_index
    actual = SearchInsertPosition.run([], target: 0)
    assert_equal 0, actual
  end

  # Normal cases
  def test_target_exists_in_array
    actual = SearchInsertPosition.run([1, 3, 5, 6], target: 3)
    assert_equal 1, actual
  end

  def test_should_insert_at_0th_index
    actual = SearchInsertPosition.run([1, 3, 5, 6], target: 0)
    assert_equal 0, actual
  end

  def test_should_insert_at_1st_index
    actual = SearchInsertPosition.run([1, 3, 5, 6], target: 2)
    assert_equal 1, actual
  end

  def test_should_insert_at_2nd_index
    actual = SearchInsertPosition.run([1, 3, 5, 6], target: 4)
    assert_equal 2, actual
  end

  def test_should_insert_at_3nd_index
    actual = SearchInsertPosition.run([1, 3, 5, 7], target: 6)
    assert_equal 3, actual
  end

  def test_should_insert_after_last_index
    actual = SearchInsertPosition.run([1, 3, 5, 7], target: 100)
    assert_equal 4, actual
  end
end
