require_relative '../../test_helper'
require_relative 'lru_cache'

describe LruCache do
  describe 'edge cases' do
  end

  describe 'base cases' do
  end

  describe 'regular cases' do
    it 'should read and write correctly' do
      # _h_ _t_
      capacity = 2
      cache = LruCache.new(capacity)

      # _1_ _t_
      cache.write("1", 1)
      expect(cache.head.value).must_equal 1
      expect(cache.tail.value).must_equal 1
      expect(cache.map.size).must_equal 1

      # _1_ _2_
      cache.write("2", 2)
      expect(cache.head.value).must_equal 1
      expect(cache.tail.value).must_equal 2
      expect(cache.map.size).must_equal capacity

      # _2_ _1_
      cache.read("1") # returns 1
      expect(cache.head.value).must_equal 2
      expect(cache.tail.value).must_equal 1

      # _1_ _3_
      cache.write("3", 3) # evicts key 2
      expect(cache.head.value).must_equal 1
      expect(cache.tail.value).must_equal 3

      expect(cache.read("2")).must_equal(-1)

      # _3_ _4_
      cache.write("4", 4) # evicts key 1
      expect(cache.head.value).must_equal 3
      expect(cache.tail.value).must_equal 4

      expect(cache.read("1")).must_equal(-1)

      # _4_ _3_
      cache.read("3")
      expect(cache.head.value).must_equal 4
      expect(cache.tail.value).must_equal 3

      # _3_ _5_
      cache.write("5", 5) # evicts 4
      expect(cache.head.value).must_equal 3
      expect(cache.tail.value).must_equal 5
    end
  end
end
