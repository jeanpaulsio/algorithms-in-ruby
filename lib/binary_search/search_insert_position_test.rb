require_relative '../../test_helper'
require_relative 'search_insert_position'

describe SearchInsertPosition do
  describe 'edge cases' do
    it 'should insert item into an empty array' do
      actual = SearchInsertPosition.run([], target: 0)
      expect(actual).must_equal 0
    end
  end

  describe 'regular cases' do
    it 'should insert before existing target item' do
      actual = SearchInsertPosition.run([1, 3, 5, 6], target: 3)
      expect(actual).must_equal 1
    end

    it 'should insert at 0th index when target < arr[0]' do
      actual = SearchInsertPosition.run([1, 3, 5, 6], target: 0)
      expect(actual).must_equal 0
    end

    it 'should insert at 1st index' do
      actual = SearchInsertPosition.run([1, 3, 5, 6], target: 2)
      expect(actual).must_equal 1
    end

    it 'should insert at 2nd index' do
      actual = SearchInsertPosition.run([1, 3, 5, 6], target: 4)
      expect(actual).must_equal 2
    end

    it 'should insert at 3rd index' do
      actual = SearchInsertPosition.run([1, 3, 5, 7], target: 6)
      expect(actual).must_equal 3
    end

    it 'should insert at last index' do
      actual = SearchInsertPosition.run([1, 3, 5, 7], target: 100)
      expect(actual).must_equal 4
    end
  end
end
