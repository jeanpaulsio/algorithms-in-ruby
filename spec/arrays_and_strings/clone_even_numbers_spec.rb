# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../lib/arrays_and_strings/clone_even_numbers'

describe CloneEvenNumbers do
  it 'works with nil input' do
    actual = CloneEvenNumbers.run(nil)
    expect(actual).must_be_nil
  end

  it 'works with an empty array' do
    actual = CloneEvenNumbers.run([])
    expect(actual).must_be_nil
  end

  it 'raises an exception when given all empty spaces' do
    actual = proc { CloneEvenNumbers.run([-1, -1, -1]) }
    expect(actual).must_raise(CloneEvenNumbers::AllEmptySpacesError)
  end

  it 'works for 1 odd number' do
    actual = CloneEvenNumbers.run([1])
    expect(actual).must_equal([1])
  end

  it 'works for multiple odd numbers' do
    actual = CloneEvenNumbers.run([1, 1, 1, 1, 1])
    expect(actual).must_equal([1, 1, 1, 1, 1])
  end

  it 'works for all even numbers' do
    actual = CloneEvenNumbers.run([2, 2, -1, -1])
    expect(actual).must_equal([2, 2, 2, 2])
  end

  it 'works for the regular case' do
    actual = CloneEvenNumbers.run([1, 2, 3, 4, -1, -1])
    expect(actual).must_equal([1, 2, 2, 3, 4, 4])
  end
end
