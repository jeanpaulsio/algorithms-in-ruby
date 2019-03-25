require_relative '../test_helper'
require_relative 'dutch_national_flag'

class DutchNationalFlagTest < Minitest::Test
  def test_base_case_01
    expected = [3, 3, 2, 4, 4, 4, 4, 6, 8, 6, 5]
    actual = DutchNationalFlag.run([3, 5, 2, 6, 8, 4, 4, 6, 4, 4, 3], 5)
    assert_equal expected, actual
  end
end