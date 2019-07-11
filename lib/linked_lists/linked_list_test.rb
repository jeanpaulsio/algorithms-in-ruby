require_relative '../../test_helper'
require_relative 'linked_list'
require_relative 'node'

describe LinkedList do
  describe '#get' do
    subject { LinkedList.generate(1, 2, 3, 4) }

    it 'should return the node' do
      expect(subject.get(1).value).must_equal 1
      expect(subject.get(2).value).must_equal 2
      expect(subject.get(3).value).must_equal 3
      expect(subject.get(4).value).must_equal 4
    end

    describe 'when querying an empty list' do
      it 'should print an error message' do
        -> { LinkedList.new.get(1) }.must_output(/No node at index 1/)
      end
    end
  end

  describe '#append' do
    subject { LinkedList.new }

    it 'should work for empty lists' do
      expect(subject.head).must_be_nil
      expect(subject.tail).must_be_nil

      subject.append Node.new(1)

      expect(subject.head.value).must_equal 1
      expect(subject.head).wont_be_nil
      expect(subject.tail).wont_be_nil
    end

    it 'should work for populated lists' do
      subject = LinkedList.generate(1, 2, 3, 4)
      subject.append Node.new(5)

      expect(subject.tail.value).must_equal 5
    end
  end
end
