require_relative '../../test_helper'
require_relative 'cyclically_sorted_min'

describe CyclicallySortedMin do
  describe 'edge cases' do
    it 'should return -1 given an empty array' do
      actual = CyclicallySortedMin.run([])
      expect(actual).must_equal(-1)
    end
  end

  describe 'base cases' do
    it 'should return 0 given a single item array' do
      actual = CyclicallySortedMin.run([1])
      expect(actual).must_equal 0
    end

    it 'should return 0 given a non-rotated double item array' do
      actual = CyclicallySortedMin.run([1, 2])
      expect(actual).must_equal 0
    end

    it 'should return 1 given a rotated double item array' do
      actual = CyclicallySortedMin.run([2, 1])
      expect(actual).must_equal 1
    end
  end

  describe 'regular cases' do
    it 'should return 0 given a sorted array' do
      actual = CyclicallySortedMin.run([0, 1, 2, 3, 4, 5, 6])
      expect(actual).must_equal 0
    end

    it 'should find the index of a rotated array' do
      actual = CyclicallySortedMin.run([3, 4, 5, 6, 0, 1, 2])
      expect(actual).must_equal 4
    end

    it 'should find the array min at the end of an array' do
      actual = CyclicallySortedMin.run([3, 4, 5, 6, 7, 8, 2])
      expect(actual).must_equal 6
    end
  end
end
