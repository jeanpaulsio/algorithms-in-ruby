require_relative '../../test_helper'
require_relative '../../utils'
require_relative 'phone_number_mnemonics'

class PhoneNumberMnemonicsTest < Minitest::Test
  include Utils

  def test_array_is_empty
    assert_output("") do
      PhoneNumberMnemonics.run([], Array.new(2), 0, 0)
    end
  end

  def test_array_has_one_number_other_than_0_or_1
    expected = print_results ["A"], ["B"], ["C"]
    assert_output(expected) do
      PhoneNumberMnemonics.run([2], Array.new(1), 0, 0)
    end
  end

  def test_array_has_only_0s_and_1s
    assert_output("") do
      PhoneNumberMnemonics.run([0, 1, 0, 1], Array.new(0), 0, 0)
    end
  end

  def test_array_has_0s_1s_and_other_numbers
    expected = print_results(
      %w[A D], %w[A E], %w[A F],
      %w[B D], %w[B E], %w[B F],
      %w[C D], %w[C E], %w[C F]
    )
    assert_output(expected) do
      PhoneNumberMnemonics.run([2, 0, 1, 3], Array.new(2), 0, 0)
    end
  end

  def test_array_has_only_non_0s_and_1s
    expected = print_results(
      %w[P T], %w[P U], %w[P V],
      %w[Q T], %w[Q U], %w[Q V],
      %w[R T], %w[R U], %w[R V],
      %w[S T], %w[S U], %w[S V]
    )
    assert_output(expected) do
      PhoneNumberMnemonics.run([7, 8], Array.new(2), 0, 0)
    end
  end

  def test_buffer_greater_than_2
    expected = print_results(
      %w[A D G], %w[A D H], %w[A D I],
      %w[A E G], %w[A E H], %w[A E I],
      %w[A F G], %w[A F H], %w[A F I],
      %w[B D G], %w[B D H], %w[B D I],
      %w[B E G], %w[B E H], %w[B E I],
      %w[B F G], %w[B F H], %w[B F I],
      %w[C D G], %w[C D H], %w[C D I],
      %w[C E G], %w[C E H], %w[C E I],
      %w[C F G], %w[C F H], %w[C F I],
    )
    assert_output(expected) do
      PhoneNumberMnemonics.run([2, 3, 4], Array.new(3), 0, 0)
    end
  end

  def test_buffer_greater_than_2_with_0s_and_1s
    expected = print_results(
      %w[A D G], %w[A D H], %w[A D I],
      %w[A E G], %w[A E H], %w[A E I],
      %w[A F G], %w[A F H], %w[A F I],
      %w[B D G], %w[B D H], %w[B D I],
      %w[B E G], %w[B E H], %w[B E I],
      %w[B F G], %w[B F H], %w[B F I],
      %w[C D G], %w[C D H], %w[C D I],
      %w[C E G], %w[C E H], %w[C E I],
      %w[C F G], %w[C F H], %w[C F I],
    )
    assert_output(expected) do
      PhoneNumberMnemonics.run([0, 2, 1, 3, 4], Array.new(3), 0, 0)
    end
  end
end
