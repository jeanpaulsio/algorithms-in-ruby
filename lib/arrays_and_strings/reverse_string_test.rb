require_relative '../../test_helper'
require_relative 'reverse_string'

class ReverseStringTest < Minitest::Test
  def test_base_case
    expected = 'quux baz bar foo'
    actual = ReverseString.run 'foo bar baz quux'
    assert_equal expected, actual
  end

  def test_two_words
    expected = 'bar foo'
    actual = ReverseString.run 'foo bar'
    assert_equal expected, actual
  end

  def test_one_word_with_space
    expected = 'foo'
    actual = ReverseString.run 'foo '
    assert_equal expected, actual
  end
end
