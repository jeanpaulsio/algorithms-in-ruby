require_relative '../../test_helper'
require_relative 'two_stack_queue'

describe TwoStackQueue do
  describe 'edge cases' do
    it 'should enqueue with no elements' do
      subject = TwoStackQueue.new.enqueue 1
      expect(subject.size).must_equal 1
    end

    it 'should dequeue with no elements' do
      subject = proc { TwoStackQueue.new.dequeue }
      expect(subject).must_raise TwoStackQueue::EmptyQueueError
    end
  end

  describe 'base cases' do
    it 'should enqueue with 1 element' do
      subject = TwoStackQueue.new(1).enqueue 2
      expect(subject.size).must_equal 2
    end

    it 'should dequeue with 1 element' do
      subject = TwoStackQueue.new('a').dequeue
      expect(subject).must_equal 'a'
    end
  end

  describe 'regular cases' do
    it 'should dequeue with stack 2 empty' do
      subject = proc { TwoStackQueue.new.dequeue }
      expect(subject).must_raise TwoStackQueue::EmptyQueueError
    end

    it 'should handle multiple enqueues and dequeues' do
      subject = TwoStackQueue.new(1, 2, 3)
      subject.enqueue 4
      subject.enqueue 5

      expect(subject.dequeue).must_equal(1)
      expect(subject.dequeue).must_equal(2)
      expect(subject.dequeue).must_equal(3)
      expect(subject.dequeue).must_equal(4)
      expect(subject.dequeue).must_equal(5)
      expect(proc { subject.dequeue }).must_raise TwoStackQueue::EmptyQueueError

      subject.enqueue 6
    end
  end
end
