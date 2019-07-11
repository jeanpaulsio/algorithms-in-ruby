require_relative '../../test_helper'
require_relative 'array_peak'

describe ArrayPeak do
  describe 'corner cases' do
    it 'should return nil for empty array as input' do
      actual = ArrayPeak.run([])
      expect(actual).must_be_nil
    end

    it 'should work for array with single item' do
      actual = ArrayPeak.run([1])
      expect(actual).must_equal 1
    end

    it 'should work for array with 2 asc elements' do
      actual = ArrayPeak.run([0, 1])
      expect(actual).must_equal 1
    end

    it 'should work for array with 2 desc elements' do
      actual = ArrayPeak.run([1, 0])
      expect(actual).must_equal 1
    end

    it 'should work when first element is peak' do
      actual = ArrayPeak.run([5, 3, 1])
      expect(actual).must_equal 5
    end

    it 'should work when last element is peak' do
      actual = ArrayPeak.run([1, 2, 3])
      expect(actual).must_equal 3
    end
  end

  describe 'regular cases' do
    it 'should find the peak in the middle' do
      actual = ArrayPeak.run([5, 10, 20, 15, 16, 17, 18, 15])
      expect(actual).must_equal 20
    end
  end
end
