require_relative '../../test_helper'
require_relative 'clone_even_numbers'

class CloneEvenNumbersTest < Minitest::Test
  def test_base_case
    expected = [1, 2, 2, 3, 4, 4, 5]
    actual = CloneEvenNumbers.run([1, 2, 3, 4, 5, -1, -1])
    assert_equal expected, actual
  end

  def test_single_odd_number
    expected = [1]
    actual = CloneEvenNumbers.run([1])
    assert_equal expected, actual
  end

  def test_single_even_number
    expected = [2, 2]
    actual = CloneEvenNumbers.run([2, -1])
    assert_equal expected, actual
  end
end
