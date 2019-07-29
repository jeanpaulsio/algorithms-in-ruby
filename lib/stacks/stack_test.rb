require_relative '../../test_helper'
require_relative 'stack'

describe Stack do
  describe 'edge cases' do
  end

  describe 'base cases' do
  end

  describe 'regular cases' do
    it 'should push elements' do
      subject = Stack.new
      subject.push 1
      expect(subject.size).must_equal(1)

      subject.push 2
      expect(subject.size).must_equal(2)
    end

    it 'should pop elements' do
      subject = Stack.new
      subject.push 1
      expect(subject.size).must_equal(1)

      subject.push 2
      expect(subject.size).must_equal(2)

      subject.pop
      expect(subject.size).must_equal(1)

      subject.pop
      expect(subject.size).must_equal(0)
    end

    it 'should peek elements' do
      subject = Stack.new
      subject.push 1
      expect(subject.size).must_equal(1)

      subject.push 2
      expect(subject.size).must_equal(2)
      expect(subject.peek).must_equal(2)
    end
  end
end
