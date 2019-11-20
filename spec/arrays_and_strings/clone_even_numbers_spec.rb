# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../lib/arrays_and_strings/clone_even_numbers'

describe CloneEvenNumbers do
  it 'should work' do
    actual = CloneEvenNumbers.run([1])
    expect(actual).must_be_nil
  end
end
