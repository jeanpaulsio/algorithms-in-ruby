require_relative '../../test_helper'
require_relative 'array_permutations'

describe ArrayPermutations do
  describe 'edge cases' do
    it 'should print an empty string given an empty array' do
      expected = ''
      subject = -> { ArrayPermutations.run([], [], 0, [false]) }
      expect(subject).must_output expected
    end
  end

  describe 'base cases' do
    describe 'when given array of size 1' do
      it 'should print permutations of size 1' do
        expected = print_results [1]
        subject = -> { ArrayPermutations.run([1], [nil], 0, [false]) }
        expect(subject).must_output expected
      end
    end

    describe 'when given array of size 2' do
      it 'should print permutations of size 1' do
        expected = print_results [1], [2]
        subject = -> { ArrayPermutations.run([1, 2], [nil], 0, [false]) }
        expect(subject).must_output expected
      end
    end
  end

  describe 'regular cases' do
    describe 'when given array of size 2' do
      it 'should print permutations of size 2' do
        expected = print_results [1, 2], [2, 1]
        subject = -> { ArrayPermutations.run([1, 2], Array.new(2), 0, [false]) }
        expect(subject).must_output expected
      end
    end

    describe 'when given array length is greater than x' do
      it 'should print all permutations' do
        expected = print_results(
          [1, 2, 3], [1, 3, 2],
          [2, 1, 3], [2, 3, 1],
          [3, 1, 2], [3, 2, 1]
        )
        subject = -> { ArrayPermutations.run([1, 2, 3], Array.new(3), 0, Array.new(3)) }
        expect(subject).must_output expected
      end
    end
  end
end
