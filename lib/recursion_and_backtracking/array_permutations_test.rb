require_relative '../../test_helper'
require_relative 'array_permutations'

class ArrayPermutationsTest < Minitest::Test
  def test_arr_is_empty
    assert_output("") do
      ArrayPermutations.run([], [], 0, [false])
    end
  end

  def test_single_item_array_where_x_is_1
    expected = print_results [1]
    assert_output(expected) do
      ArrayPermutations.run([1], [nil], 0, [false])
    end
  end

  def test_double_item_array_where_x_is_1
    expected = print_results [1], [2]
    assert_output(expected) do
      ArrayPermutations.run([1, 2], [nil], 0, [false])
    end
  end

  def test_array_length_equals_x
    expected = print_results [1, 2], [2, 1]
    assert_output(expected) do
      ArrayPermutations.run([1, 2], Array.new(2), 0, [false])
    end
  end

  def test_array_length_is_greater_than_x
    expected = print_results(
      [1, 2, 3], [1, 3, 2],
      [2, 1, 3], [2, 3, 1],
      [3, 1, 2], [3, 2, 1]
    )
    assert_output(expected) do
      ArrayPermutations.run([1, 2, 3], Array.new(3), 0, Array.new(3))
    end
  end
end
