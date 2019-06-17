require_relative '../../test_helper'
require_relative 'power'

class PowerTest < Minitest::Test
  def test_zeroth_power
    assert_equal 1, Power.run(13, 0)
  end

  def test_first_power
    assert_equal 13, Power.run(13, 1)
  end

  def test_base_cases
    assert_equal 8, Power.run(2, 3)
    assert_equal 49, Power.run(7, 2)
    assert_equal 100, Power.run(10, 2)
    assert_equal 25, Power.run(5, 2)
    assert_equal 81, Power.run(3, 4)
    assert_equal 262_144, Power.run(4, 9)
  end
end
