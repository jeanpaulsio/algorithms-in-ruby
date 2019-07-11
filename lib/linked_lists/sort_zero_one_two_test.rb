require_relative '../../test_helper'
require_relative 'linked_list'
require_relative 'sort_zero_one_two'

describe SortZeroOneTwo do
  subject do
    SortZeroOneTwo.run(LinkedList.generate(2, 0, 1, 0, 2, 1))
  end

  describe 'edge cases' do
    it 'should handle an empty list' do
      expect(SortZeroOneTwo.run(LinkedList.new).head).must_be_nil
      expect(SortZeroOneTwo.run(LinkedList.new).tail).must_be_nil
    end

    it 'should raise an error given an illegal number' do
      subject = proc { SortZeroOneTwo.run(LinkedList.generate(3)) }
      expect(subject).must_raise ArgumentError
    end
  end

  describe 'regular cases' do
    it 'should sort a list of 0s, 1s, and 2s' do
      until subject.head.next.nil?
        head_value = subject.head.value
        next_value = subject.head.next.value

        expect(head_value <= next_value).must_equal true

        subject.head = subject.head.next
      end
    end

    it 'should work for lists missing a valid number' do
      subject = SortZeroOneTwo.run(LinkedList.generate(2, 1, 2, 1))

      until subject.head.next.nil?
        head_value = subject.head.value
        next_value = subject.head.next.value

        expect(head_value <= next_value).must_equal true

        subject.head = subject.head.next
      end
    end
  end
end
