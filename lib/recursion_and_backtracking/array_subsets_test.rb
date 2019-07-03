require_relative '../../test_helper'
require_relative 'array_subsets'

class ArraySubsetsTest < Minitest::Test
  def test_array_is_empty
    arr = []
    assert_output("") do
      ArraySubsets.run(arr, Array.new(arr.length), 0, 0)
    end
  end

  def test_array_is_of_size_1
    expected = print_results([], [1])

    arr = [1]
    assert_output(expected) do
      ArraySubsets.run(arr, Array.new(arr.length), 0, 0)
    end
  end

  def test_array_is_of_size_2
    expected = print_results([], [1], [1, 2], [2])

    arr = [1, 2]
    assert_output(expected) do
      ArraySubsets.run(arr, Array.new(arr.length), 0, 0)
    end
  end

  def test_array_is_of_size_greater_than_2
    expected = print_results(
      [],
      [1],
      [1, 2],
      [1, 2, 3],
      [1, 3],
      [2],
      [2, 3],
      [3]
    )
    
    arr = [1, 2, 3]
    assert_output(expected) do
      ArraySubsets.run(arr, Array.new(arr.length), 0, 0)
    end
  end
end

