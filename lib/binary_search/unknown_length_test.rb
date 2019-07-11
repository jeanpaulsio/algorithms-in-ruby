require_relative '../../test_helper'
require_relative 'unknown_length'

describe UnknownLength do
  describe 'edge cases' do
    it 'should return -1 when given an empty array' do
      actual = UnknownLength.run([], target: 0)
      expect(actual).must_equal(-1)
    end
  end

  describe 'regular cases' do
    it 'should find all target values' do
      arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      arr.each { |i| expect(UnknownLength.run(arr, target: i)).must_equal i }
    end

    it 'should return -1 when target is not found' do
      actual = UnknownLength.run([1, 2, 3], target: 4)
      expect(actual).must_equal(-1)
    end
  end
end
