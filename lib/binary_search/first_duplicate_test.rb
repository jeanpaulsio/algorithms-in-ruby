require_relative '../../test_helper'
require_relative 'first_duplicate'

describe FirstDuplicate do
  describe 'edge cases' do
    it 'should return -1 when input is empty' do
      actual = FirstDuplicate.run([], target: 3)
      expect(actual).must_equal(-1)
    end

    it 'should return -1 when input is nil' do
      actual = FirstDuplicate.run(nil, target: 3)
      expect(actual).must_equal(-1)
    end
  end

  describe 'base cases' do
    it 'should return -1 for single element in array not equal to target' do
      actual = FirstDuplicate.run([0], target: 1)
      expect(actual).must_equal(-1)
    end

    it 'should return 0 for single element in array equal to target' do
      actual = FirstDuplicate.run([1], target: 1)
      expect(actual).must_equal 0
    end
  end

  describe 'regular cases' do
    it 'should return first index when all elements are the same' do
      actual = FirstDuplicate.run([1, 1, 1, 1, 1, 1], target: 1)
      expect(actual).must_equal 0
    end

    it 'should return -1 when array has no dupes' do
      actual = FirstDuplicate.run([0, 1, 2, 3, 4, 5], target: 6)
      expect(actual).must_equal(-1)
    end

    it 'should find first dupe' do
      actual = FirstDuplicate.run([0, 1, 2, 6, 6, 7, 8, 9], target: 6)
      expect(actual).must_equal 3
    end

    it 'should find first dupe towards front of array' do
      actual = FirstDuplicate.run([0, 0, 2, 6, 6, 7, 8, 9], target: 0)
      expect(actual).must_equal 0
    end

    it 'should find first dupe towards back of array' do
      actual = FirstDuplicate.run([1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9], target: 9)
      expect(actual).must_equal 9
    end
  end
end
