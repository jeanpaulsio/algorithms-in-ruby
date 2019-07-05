require_relative '../test_helper'
require_relative 'sandbox'

class SandboxTest < Minitest::Test
  def test_sandbox
    expected = true
    actual = Sandbox.run
    assert_equal expected, actual
  end
end
