require_relative '../../test_helper'
require_relative 'kadanes_algorithm'

describe KadanesAlgorithm do
  describe 'base cases' do
    it 'should return 4' do
      expected = 4
      actual = KadanesAlgorithm.run [1, 2, -1, 2, -3, 2, -5]
      expect(actual).must_equal expected
    end

    it 'should return 7' do
      expected = 7
      actual = KadanesAlgorithm.run [-2, -3, 4, -1, -2, 1, 5, -1]
      expect(actual).must_equal expected
    end
  end
end
