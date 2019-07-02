require_relative '../../test_helper'
require_relative '../../utils'
require_relative 'print_combos'

class PrintCombosTest < Minitest::Test
  include Utils

  def test_arr_is_empty
    assert_output("") do
      PrintCombos.run([], Array.new(0), 0, 0)
    end
  end

  def test_x_is_greater_than_array_length
    assert_output("") do
      PrintCombos.run([1, 2, 3], Array.new(4), 0, 0)
    end
  end

  def test_single_element_array_where_x_is_1
    expected = pp [[1]]

    assert_output(expected) do
      PrintCombos.run([1], Array.new(1), 0, 0)
    end
  end

  def test_double_element_array_where_x_is_1
    expected = pp [[1], [2]]

    assert_output(expected) do
      PrintCombos.run([1, 2], Array.new(1), 0, 0)
    end
  end

  def test_x_is_2_and_arr_length_is_3
    expected = pp [[1, 2], [1, 3], [2, 3]]

    assert_output(expected) do
      PrintCombos.run([1, 2, 3], Array.new(2), 0, 0)
    end
  end

  def test_x_is_3_and_arr_length_is_4
    expected = pp [[1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4]]

    assert_output(expected) do
      PrintCombos.run([1, 2, 3, 4], Array.new(3), 0, 0)
    end
  end

  def test_x_is_equal_to_array_length
    expected = pp [[1, 2, 3]]

    assert_output(expected) do
      PrintCombos.run([1, 2, 3], Array.new(3), 0, 0)
    end
  end
end
