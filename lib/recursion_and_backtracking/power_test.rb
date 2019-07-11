require_relative '../../test_helper'
require_relative 'power'

describe 'Power' do
  describe 'base cases' do
    it 'should return 1 for 0th power' do
      actual = Power.run(13, 0)
      expect(actual).must_equal 1
    end

    it 'should return self when raised to 1st power' do
      actual = Power.run(13, 1)
      expect(actual).must_equal 13
    end
  end

  describe 'regular cases' do
    it 'should return the correct power' do
      expect(Power.run(2, 3)).must_equal 8
      expect(Power.run(7, 2)).must_equal 49
      expect(Power.run(10, 2)).must_equal 100
      expect(Power.run(5, 2)).must_equal 25
      expect(Power.run(3, 4)).must_equal 81
      expect(Power.run(4, 9)).must_equal 262_144
    end
  end
end
