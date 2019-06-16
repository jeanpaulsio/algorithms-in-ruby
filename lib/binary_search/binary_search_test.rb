require_relative '../../test_helper'
require_relative 'binary_search'

class BinarySearchTest < Minitest::Test
  def test_base_case
    arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    arr.each { |i| assert_equal i, BinarySearch.run(arr, target: i) }
  end
end
