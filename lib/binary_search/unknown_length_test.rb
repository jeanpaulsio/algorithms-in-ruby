require_relative '../../test_helper'
require_relative 'unknown_length'

class UnknownLengthTest < Minitest::Test
  def test_empty_array
    actual = UnknownLength.run([], target: 0)
    assert_equal -1, actual
  end

  def test_base_case
    arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    arr.each { |i| assert_equal i, UnknownLength.run(arr, target: i) }
  end

  def test_array_does_not_have_target
    assert_equal -1, UnknownLength.run([1, 2, 3], target: 4)
  end
end
