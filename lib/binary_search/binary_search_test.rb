require_relative '../../test_helper'
require_relative 'binary_search'

describe BinarySearch do
  it 'should work for base case' do
    arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    arr.each do |i|
      expect(BinarySearch.run(arr, target: i)).must_equal i
    end
  end
end
