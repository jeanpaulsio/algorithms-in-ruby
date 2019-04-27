require_relative '../test_helper'
require_relative 'kadanes_algorithm'

class KadanesAlgorithmTest < Minitest::Test
  def test_base_case_01
    expected = 4
    actual = KadanesAlgorithm.run [1, 2, -1, 2, -3, 2, -5]
    assert_equal expected, actual
  end

  def test_base_case_02
    expected = 7
    actual = KadanesAlgorithm.run [-2, -3, 4, -1, -2, 1, 5, -1]
    assert_equal expected, actual
  end
end