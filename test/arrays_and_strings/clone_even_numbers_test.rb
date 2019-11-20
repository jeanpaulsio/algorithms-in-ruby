# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/arrays_and_strings/clone_even_numbers'

describe CloneEvenNumbers do
  it 'should work' do
    actual = CloneEvenNumbers.run([1])
    assert_nil actual
  end
end
