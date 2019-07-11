require_relative '../../test_helper'
require_relative 'array_subsets'

describe ArraySubsets do
  describe 'edge cases' do
    it 'should print an empty string given an empty array' do
      arr = []
      subject = -> { ArraySubsets.run(arr, Array.new(arr.length), 0, 0) }
      expect(subject).must_output ''
    end
  end

  describe 'base cases' do
    it 'should print subsets of an array with length 1' do
      expected = print_results([], [1])

      arr = [1]
      subject = -> { ArraySubsets.run(arr, Array.new(arr.length), 0, 0) }
      expect(subject).must_output expected
    end

     it 'should print subsets of an array with length 2' do
      expected = print_results([], [1], [1, 2], [2])

      arr = [1, 2]
      subject = -> { ArraySubsets.run(arr, Array.new(arr.length), 0, 0) }
      expect(subject).must_output expected
     end
  end

  describe 'regular cases' do
    it 'should print subsets of an array with length > 2' do
      expected = print_results(
        [],
        [1],
        [1, 2],
        [1, 2, 3],
        [1, 3],
        [2],
        [2, 3],
        [3]
      )

      arr = [1, 2, 3]
      subject = -> { ArraySubsets.run(arr, Array.new(arr.length), 0, 0) }
      expect(subject).must_output expected
    end
  end
end
