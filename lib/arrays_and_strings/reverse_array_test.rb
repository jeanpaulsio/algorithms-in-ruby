require_relative '../../test_helper'
require_relative 'reverse_array'

class ReverseArrayTest < Minitest::Test
  def test_array_with_even_length
    expected = [0, 1, 2, 3, 4, 5]
    actual = ReverseArray.run [5, 4, 3, 2, 1, 0]
    assert_equal expected, actual
  end

  def test_array_with_odd_length
    expected = %w[foo bar baz]
    actual = ReverseArray.run %w[baz bar foo]
    assert_equal expected, actual
  end

  def test_array_with_one_item
    expected = %w[asdf]
    actual = ReverseArray.run %w[asdf]
    assert_equal expected, actual
  end
end
