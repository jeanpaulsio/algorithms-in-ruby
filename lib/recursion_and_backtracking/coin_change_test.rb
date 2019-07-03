require_relative '../../test_helper'
require_relative 'coin_change'

class CoinChangeTest < Minitest::Test
  def test_coin_array_is_empty
    assert_output("") do
      CoinChange.run([], 1, [], 0, 0)
    end
  end

  def test_coin_array_with_one_item
    expected = print_results [1]
    assert_output(expected) do
      CoinChange.run([1], 1, [], 0, 0)
    end
  end

  def test_target_is_negative
    assert_output("") do
      CoinChange.run([1], -1, [], 0, 0)
    end
  end

  def test_target_is_equal_to_larget_coin
    arr = [1, 2, 5]
    target = 5

    expected = print_results(
      [1, 1, 1, 1, 1],
      [1, 1, 1, 2],
      [1, 2, 2],
      [5]
    )
    assert_output(expected) do
      CoinChange.run(arr, target, [], 0, 0)
    end
  end

  def test_target_is_gt_or_equal_to_larget_coin
    arr = [1, 2, 5]
    target = 6

    expected = print_results(
      [1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 2],
      [1, 1, 2, 2],
      [1, 5],
      [2, 2, 2]
    )
    assert_output(expected) do
      CoinChange.run(arr, target, [], 0, 0)
    end
  end
end
