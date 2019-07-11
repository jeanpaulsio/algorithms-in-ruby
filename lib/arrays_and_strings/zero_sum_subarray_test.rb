require_relative '../../test_helper'
require_relative 'zero_sum_subarray'

describe ZeroSumSubarray do
  describe 'edge cases' do
    it 'should return nil given an empty array' do
      actual = ZeroSumSubarray.run([])
      expect(actual).must_be_nil
    end

    it 'should return nil given nil input' do
      actual = ZeroSumSubarray.run(nil)
      expect(actual).must_be_nil
    end
  end

  describe 'base cases' do
    it 'should return [0, 0] given single element of 0' do
      expected = [0, 0]
      actual = ZeroSumSubarray.run([0])
      expect(actual).must_equal expected
    end

    it 'should return nil for single +ve element' do
      actual = ZeroSumSubarray.run([1])
      expect(actual).must_be_nil
    end

    it 'should return nil for single -ve element' do
      actual = ZeroSumSubarray.run([-1])
      expect(actual).must_be_nil
    end
  end

  describe 'regular cases' do
    it 'should work when 0 sum exists' do
      arr = [2, 4, -2, 1, -3, 5, -3]
      expected = [1, 4]
      actual = ZeroSumSubarray.run(arr)
      expect(actual).must_equal expected
    end

    it 'should return nil when 0 sum does not exist' do
      arr = [2, 4, -2, 1, -3, 5, -3]
      expected = [1, 4]
      actual = ZeroSumSubarray.run(arr)
      expect(actual).must_equal expected
    end

    it 'should work when answer is at front of array' do
      arr = [1, -1, 2, 3, 4, 5, 6, 6]
      expected = [0, 1]
      actual = ZeroSumSubarray.run(arr)
      expect(actual).must_equal expected
    end

    it 'should work when answer is at end of array' do
      arr = [1, 2, 3, 4, 5, 6, -6]
      expected = [5, 6]
      actual = ZeroSumSubarray.run(arr)
      expect(actual).must_equal expected
    end
  end
end
